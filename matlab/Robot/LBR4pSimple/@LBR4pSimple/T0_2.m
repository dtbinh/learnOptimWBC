function T0_2 = T0_2(rob,in2)
%% T0_2 - Forward kinematics for the LBR4pSimple copy arm up to frame 2 of 7. 
% ========================================================================= 
%    
%    T = T0_2(rob,q) 
%    T = rob.T0_2(q) 
%    
%  Description:: 
%    Given a set of joint variables up to joint number 2 the function 
%    computes the pose belonging to that joint with respect to the base frame. 
%    
%  Input:: 
%    q:  2-element vector of generalized coordinates. 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    T:  [4x4] Homogenous transformation matrix relating the pose of joint 2 of 7 
%              for the given joint values to the base frame. 
%    
%  Example:: 
%    --- 
%    
%  Known Bugs:: 
%    --- 
%    
%  TODO:: 
%    --- 
%    
%  References:: 
%    1) Robot Modeling and Control - Spong, Hutchinson, Vidyasagar 
%    2) Modelling and Control of Robot Manipulators - Sciavicco, Siciliano 
%    3) Introduction to Robotics, Mechanics and Control - Craig 
%    4) Modeling, Identification & Control of Robots - Khalil & Dombre 
%    
%  Authors:: 
%    This is an autogenerated function! 
%    Code generator written by: 
%    Joern Malzahn 
%    2012 RST, Technische Universitaet Dortmund, Germany 
%    http://www.rst.e-technik.tu-dortmund.de 
%    
%  See also LBR4pSimple copy.
%    
    
% Copyright (C) 1993-2016, by Peter I. Corke 
% Copyright (C) 2012-2016, by Joern Malzahn 
% 
% This file has been automatically generated with The Robotics Toolbox for Matlab (RTB). 
% 
% RTB and code generated with RTB is free software: you can redistribute it and/or modify 
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
% 
% The code generation module emerged during the work on a project funded by 
% the German Research Foundation (DFG, BE1569/7-1). The authors gratefully  
% acknowledge the financial support. 

%% Bugfix
%  In some versions the symbolic toolbox writes the constant $pi$ in
%  capital letters. This way autogenerated functions might not work properly.
%  To fix this issue a local variable is introduced:
PI = pi;
   




%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    28-Feb-2016 21:52:59

q1 = in2(:,1);
q2 = in2(:,2);
t2 = cos(q1);
t3 = cos(q2);
t4 = sin(q1);
t5 = sin(q2);
T0_2 = reshape([t2.*t3,t3.*t4,-t5,0.0,-t4,t2,0.0,0.0,t2.*t5,t4.*t5,t3,0.0,0.0,0.0,3.1e1./1.0e2,1.0],[4, 4]);
