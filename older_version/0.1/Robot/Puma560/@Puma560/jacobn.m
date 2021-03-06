function jacobn = jacobn(rob,in2)
%% JACOBN - Jacobian with respect to the end-effector coordinate frame of the Puma 560 copy arm. 
% ========================================================================= 
%    
%    Jn = jacobn(rob,q) 
%    Jn = rob.jacobn(q) 
%    
%  Description:: 
%    Given a full set of joint variables the function 
%    computes the robot jacobian with respect to the end-effector frame. 
%    
%  Input:: 
%    q:  6-element vector of generalized coordinates. 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    Jn:  [6x6] Jacobian matrix 
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
%  See also fkine,jacob0.
%    
    
% Copyright (C) 1993-2014, by Peter I. Corke 
% Copyright (C) 2012-2014, by Joern Malzahn 
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
%    22-Nov-2014 18:14:01

q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
q6 = in2(:,6);
t2 = q2+q3;
t3 = cos(q4);
t4 = sin(q6);
t5 = cos(t2);
t6 = sin(t2);
t7 = cos(q5);
t8 = cos(q6);
t9 = sin(q4);
t10 = cos(q2);
t11 = cos(q3);
t12 = sin(q5);
t13 = sin(q2);
t14 = sin(q3);
t15 = t8.*t12.*2.03e-2;
t16 = t4.*t9.*4.318e-1;
t17 = t8.*t9.*4.318e-1;
t18 = t3.*t4.*t7.*4.318e-1;
t19 = t7.*2.03e-2;
t20 = t3.*t12.*4.318e-1;
t21 = t4.*t9;
t22 = t21-t3.*t7.*t8;
t23 = -t3.*t4-t7.*t8.*t9;
t24 = t8.*t9;
t25 = t3.*t4.*t7;
t26 = t24+t25;
t27 = t4.*t7.*t9;
t28 = t27-t3.*t8;
t29 = t9.*t12;
jacobn = reshape([t3.*t4.*t5.*2.03e-2-t3.*t4.*t6.*4.318e-1+t3.*t4.*t10.*4.318e-1+t5.*t7.*t8.*t9.*2.03e-2-t6.*t7.*t8.*t9.*4.318e-1-t4.*t9.*t10.*t11.*1.5005e-1+t7.*t8.*t9.*t10.*4.318e-1+t4.*t9.*t13.*t14.*1.5005e-1-t8.*t10.*t12.*t14.*1.5005e-1-t8.*t11.*t12.*t13.*1.5005e-1+t3.*t7.*t8.*t10.*t11.*1.5005e-1-t3.*t7.*t8.*t13.*t14.*1.5005e-1,t3.*t5.*t8.*2.03e-2-t3.*t6.*t8.*4.318e-1+t3.*t8.*t10.*4.318e-1-t4.*t5.*t7.*t9.*2.03e-2+t4.*t6.*t7.*t9.*4.318e-1-t4.*t7.*t9.*t10.*4.318e-1-t8.*t9.*t10.*t11.*1.5005e-1+t4.*t10.*t12.*t14.*1.5005e-1+t4.*t11.*t12.*t13.*1.5005e-1+t8.*t9.*t13.*t14.*1.5005e-1-t3.*t4.*t7.*t10.*t11.*1.5005e-1+t3.*t4.*t7.*t13.*t14.*1.5005e-1,t7.*t10.*t14.*(-1.5005e-1)-t7.*t11.*t13.*1.5005e-1-t9.*t10.*t12.*4.318e-1-t3.*t10.*t11.*t12.*1.5005e-1+t3.*t12.*t13.*t14.*1.5005e-1-t9.*t10.*t11.*t12.*2.03e-2+t9.*t10.*t12.*t14.*4.318e-1+t9.*t11.*t12.*t13.*4.318e-1+t9.*t12.*t13.*t14.*2.03e-2,-t10.*(t14.*t22-t8.*t11.*t12)-t13.*(t11.*t22+t8.*t12.*t14),-t10.*(t14.*t26+t4.*t11.*t12)-t13.*(t11.*t26-t4.*t12.*t14),t10.*(t7.*t11-t3.*t12.*t14)-t13.*(t7.*t14+t3.*t11.*t12),t15+t16-t3.*t7.*t8.*4.318e-1-t4.*t9.*t14.*4.318e-1+t8.*t11.*t12.*4.318e-1+t3.*t7.*t8.*t14.*4.318e-1,t17+t18-t4.*t12.*2.03e-2-t4.*t11.*t12.*4.318e-1-t8.*t9.*t14.*4.318e-1-t3.*t4.*t7.*t14.*4.318e-1,t19+t20+t7.*t11.*4.318e-1-t3.*t12.*t14.*4.318e-1,t23,t28,t29,t15+t16-t3.*t7.*t8.*4.318e-1,t17+t18-t4.*t12.*2.03e-2,t19+t20,t23,t28,t29,0.0,0.0,0.0,t8.*t12,-t4.*t12,t7,0.0,0.0,0.0,-t4,-t8,0.0,0.0,0.0,0.0,0.0,0.0,1.0],[6, 6]);
