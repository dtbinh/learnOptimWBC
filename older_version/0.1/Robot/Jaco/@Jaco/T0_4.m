function T0_4 = T0_4(rob,in2)
%% T0_4 - Forward kinematics for the Jaco copy arm up to frame 4 of 6. 
% ========================================================================= 
%    
%    T = T0_4(rob,q) 
%    T = rob.T0_4(q) 
%    
%  Description:: 
%    Given a set of joint variables up to joint number 4 the function 
%    computes the pose belonging to that joint with respect to the base frame. 
%    
%  Input:: 
%    q:  4-element vector of generalized coordinates. 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    T:  [4x4] Homogenous transformation matrix relating the pose of joint 4 of 6 
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
%  See also Jaco copy.
%    
    
% Copyright (C) 1993-2015, by Peter I. Corke 
% Copyright (C) 2012-2015, by Joern Malzahn 
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
%    17-Aug-2015 15:23:46

q1 = in2(:,1);
q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
t2 = cos(q1);
t3 = pi.*(1.0./2.0);
t4 = q3+t3;
t5 = q2-t3;
t6 = cos(t5);
t7 = sin(t4);
t8 = cos(t4);
t9 = pi.*(1.1e1./3.6e1);
t10 = cos(q4);
t11 = sin(q1);
t12 = cos(t9);
t13 = sin(q4);
t14 = sin(t5);
t15 = t2.*t6.*t8;
t16 = t2.*t6.*t7;
t17 = t16-t2.*t8.*t14;
t18 = sin(t9);
t19 = t2.*t7.*t14;
t20 = t15+t19;
t21 = t6.*t8.*t11;
t22 = t7.*t11.*t14;
t23 = t21+t22;
t24 = t6.*t7.*t11;
t25 = t24-t8.*t11.*t14;
t26 = t6.*t7;
t31 = t8.*t14;
t27 = t26-t31;
t28 = t6.*t8;
t29 = t7.*t14;
t30 = t28+t29;
T0_4 = reshape([t11.*t13+t10.*(t15+t2.*t7.*sin(pi.*(-1.0./2.0)+q2)),t2.*t13-t10.*t23,-t10.*t27,0.0,t17.*t18+t10.*t11.*t12-t12.*t13.*t20,-t18.*t25+t2.*t10.*t12+t12.*t13.*t23,t18.*t30+t12.*t13.*t27,0.0,t12.*t17-t10.*t11.*t18+t13.*t18.*t20,-t12.*t25-t2.*t10.*t18-t13.*t18.*t23,t12.*t30-t13.*t18.*t27,0.0,t11.*(-9.8e-3)+t2.*t6.*(4.1e1./1.0e2)-t2.*t6.*t7.*2.491822393260846e-1+t2.*t8.*t14.*2.491822393260846e-1,t2.*(-9.8e-3)-t6.*t11.*(4.1e1./1.0e2)+t6.*t7.*t11.*2.491822393260846e-1-t8.*t11.*t14.*2.491822393260846e-1,t14.*(4.1e1./1.0e2)-t6.*t8.*2.491822393260846e-1-t7.*t14.*2.491822393260846e-1+2.755e-1,1.0],[4, 4]);
