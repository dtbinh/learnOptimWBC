%SerialLink.fdyn Integrate forward dynamics
%
% [T,Q,QD] = R.fdyn(T1, TORQFUN) integrates the dynamics of the robot over 
% the time  interval 0 to T and returns vectors of time TI, joint position Q
% and joint velocity QD.  The initial joint position and velocity are zero.
% The torque applied to the joints is computed by the user function TORQFUN:
%
% [TI,Q,QD] = R.fdyn(T, TORQFUN, Q0, QD0) as above but allows the initial
% joint position and velocity to be specified.
%
% The control torque is computed by a user defined function
%
%        TAU = TORQFUN(T, Q, QD, ARG1, ARG2, ...)
%
% where Q and QD are the manipulator joint coordinate and velocity state 
% respectively, and T is the current time. 
%
% [T,Q,QD] = R.fdyn(T1, TORQFUN, Q0, QD0, ARG1, ARG2, ...) allows optional 
% arguments to be passed through to the user function.
%
% Note::
% - This function performs poorly with non-linear joint friction, such as
%   Coulomb friction.  The R.nofriction() method can be used to set this 
%   friction to zero.
% - If TORQFUN is not specified, or is given as 0 or [],  then zero torque
%   is applied to the manipulator joints.
% - The builtin integration function ode45() is used.
%
% See also SerialLink.accel, SerialLink.nofriction, SerialLink.rne, ode45.




% Copyright (C) 1993-2014, by Peter I. Corke
%
% This file is part of The Robotics Toolbox for MATLAB (RTB).
% 
% RTB is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% RTB is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
% 
% You should have received a copy of the GNU Leser General Public License
% along with RTB.  If not, see <http://www.gnu.org/licenses/>.
%
% http://www.petercorke.com

function [t, q, qd] = DynSim(time_struct,controller,qi,qdi,fixed_step,varargin)
    disp('im in dynsim')
    % check the Matlab version, since ode45 syntax has changed
    if verLessThan('matlab', '7')  
        error('fdyn now requires Matlab version >= 7');
    end

    time = time_struct.ti:time_struct.step:time_struct.tf;
    
    
    
%      TO FIX
%      
%     if nargin == 2
%         torqfun = 0;
%         q0 = zeros(1,n);
%         qd0 = zeros(1,n);
%     elseif nargin == 3
%         q0 = zeros(1,n);
%         qd0 = zeros(1,n);
%     elseif nargin == 4
%         qd0 = zeros(1,n);
%     end

    
    for index_chain=1:controller.subchains.GetNumChains
        
        % concatenate q and qd into the initial state vector
        yi = [qi{index_chain}(:);qdi{index_chain}(:)];
          % preallocate q and qd for handle failure situations
%         q = zeros(size(qi{index_chain}(:)));
%         qd = zeros(size(qdi{index_chain}(:)));
        
        % set the index for the current chain in use
        % TODO add managment of multiple chain in fdyn2
        controller.SetCurRobotIndex(index_chain);
        n = controller.GetActiveBot.n;
%          try
            if(fixed_step)
                disp('fixed_step') 
                y = Ode1(@fdyn2,time,yi,controller,varargin{:}); 
            else
                disp('NOT fixed_step')
                [T,y] = ode15s(@fdyn2,time,yi,[],controller,varargin{:});     
            end  
            q{index_chain} = y(:,1:n);
            qd{index_chain} = y(:,n+1:2*n);
%         catch err
%             
%             q{index_chain} = y(:,1:n);
%             qd{index_chain} = y(:,n+1:2*n); 
%             %because of i have failed i need to cut the time till the last
%             %position computed
%             t = time(1,1:size(q{index_chain},1));
%             rethrow(err);
%         end
    end
    % i have to use the same sample time for every chain 
    t = time;
end


%FDYN2  private function called by FDYN
%
%   XDD = FDYN2(T, X, FLAG, ROBOT, TORQUEFUN)
%
% Called by FDYN to evaluate the robot velocity and acceleration for
% forward dynamics.  T is the current time, X = [Q QD] is the state vector,
% ROBOT is the object being integrated, and TORQUEFUN is the string name of
% the function to compute joint torques and called as
%
%       TAU = TORQUEFUN(T, X)
%
% if not given zero joint torques are assumed.
%
% The result is XDD = [QD QDD].
function xd = fdyn2(t, x, controller,varargin)


    %% varargin settings
    options = struct('torquesat',10000);

    %# read the acceptable names
    optionNames = fieldnames(options);

    %# count arguments
    nArgs = length(varargin);
    if round(nArgs/2)~=nArgs/2
       error('EXAMPLE needs propertyName/propertyValue pairs')
    end

    for pair = reshape(varargin,2,[]) %# pair is {propName;propValue}
       inpName = lower(pair{1}); %# make case insensitive

       if any(strcmp(inpName,optionNames))
          %# overwrite options. If you want you can test for the right class here
          %# Also, if you find out that there is an option you keep getting wrong,
          %# you can use "if strcmp(inpName,'problemOption'),testMore,end"-statements
          options.(inpName) = pair{2};
       else
          error('%s is not a recognized parameter name',inpName)
       end
    end
    %%

    
    if isempty(controller.current_time)
      controller.current_time = tic;
    end

    n = controller.GetActiveBot().n;
    
    q = x(1:n)';
    qd = x(n+1:2*n)';

    % evaluate the torque function if one is given
    if isobject(controller)
        tau = controller.Policy(t,q,qd);
    else   
        tau = zeros(1,n);
    end
    
    %apply saturation on the torque 
    tau(tau>options.('torquesat')) = options.('torquesat');
    tau(tau<-options.('torquesat')) = -options.('torquesat');
    
    %control if tau is not a row vector 
    if(~isrow(tau))
        tau = tau';    
    end
    
    qdd = controller.GetActiveBot().accel(x(1:n,1)', x(n+1:2*n,1)', tau);
    xd = [x(n+1:2*n,1); qdd];
    
    if toc(controller.current_time) > controller.max_time
      controller.current_time = []; 
    	error('Stopped. Taking too long.')
    end
    
end
