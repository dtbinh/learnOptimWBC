function T0_6 = T0_6(rob,in2)
%% T0_6 - Forward kinematics for the Puma 560 copy arm up to frame 6 of 6. 
% ========================================================================= 
%    
%    T = T0_6(rob,q) 
%    T = rob.T0_6(q) 
%    
%  Description:: 
%    Given a set of joint variables up to joint number 6 the function 
%    computes the pose belonging to that joint with respect to the base frame. 
%    
%  Input:: 
%    q:  6-element vector of generalized coordinates. 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    T:  [4x4] Homogenous transformation matrix relating the pose of joint 6 of 6 
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
%  See also Puma 560 copy.
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
%    22-Nov-2014 18:13:43

q1 = in2(:,1);
q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
q6 = in2(:,6);
t2 = cos(q1);
t3 = sin(q1);
t4 = sin(q4);
t5 = cos(q4);
t6 = cos(q2);
t7 = cos(q3);
t8 = sin(q2);
t9 = sin(q3);
t13 = t2.*t6.*t7;
t14 = t2.*t8.*t9;
t10 = t13-t14;
t11 = cos(q6);
t12 = t3.*t5;
t15 = t4.*t10;
t16 = t12+t15;
t17 = sin(q6);
t18 = cos(q5);
t19 = t3.*t4;
t28 = t5.*t10;
t20 = t19-t28;
t21 = t18.*t20;
t22 = sin(q5);
t23 = t2.*t6.*t9;
t24 = t2.*t7.*t8;
t25 = t23+t24;
t26 = t22.*t25;
t27 = t21+t26;
t29 = t3.*t6.*t7;
t32 = t3.*t8.*t9;
t30 = t29-t32;
t31 = t2.*t5;
t33 = t31-t4.*t30;
t34 = t2.*t4;
t35 = t3.*t6.*t9;
t36 = t3.*t7.*t8;
t37 = t35+t36;
t38 = t22.*t37;
t39 = t5.*(t29-t32);
t40 = t34+t39;
t41 = t6.*t9;
t42 = t7.*t8;
t43 = t41+t42;
t44 = t6.*t7;
t49 = t8.*t9;
t45 = t44-t49;
t46 = t22.*t45;
t47 = t5.*t18.*t43;
t48 = t46+t47;
T0_6 = reshape([-t16.*t17-t11.*t27,t17.*t33-t11.*(t38-t18.*(t34+t5.*t30)),t11.*t48-t4.*t17.*t43,0.0,-t11.*t16+t17.*t27,t11.*t33+t17.*(t38-t18.*t40),-t17.*t48-t4.*t11.*t43,0.0,t20.*t22-t18.*t25,-t18.*t37-t22.*t40,t18.*t45-t5.*t22.*t43,0.0,t3.*1.5005e-1+t2.*t6.*4.318e-1+t2.*t6.*t7.*2.03e-2-t2.*t6.*t9.*4.318e-1-t2.*t7.*t8.*4.318e-1-t2.*t8.*t9.*2.03e-2,t2.*(-1.5005e-1)+t3.*t6.*4.318e-1+t3.*t6.*t7.*2.03e-2-t3.*t6.*t9.*4.318e-1-t3.*t7.*t8.*4.318e-1-t3.*t8.*t9.*2.03e-2,t8.*4.318e-1+t6.*t7.*4.318e-1+t6.*t9.*2.03e-2+t7.*t8.*2.03e-2-t8.*t9.*4.318e-1,1.0],[4, 4]);
