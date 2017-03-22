function T0_7 = T0_7(rob,in2)
%% T0_7 - Forward kinematics for the LBR4pReal copy arm up to frame 7 of 7. 
% ========================================================================= 
%    
%    T = T0_7(rob,q) 
%    T = rob.T0_7(q) 
%    
%  Description:: 
%    Given a set of joint variables up to joint number 7 the function 
%    computes the pose belonging to that joint with respect to the base frame. 
%    
%  Input:: 
%    q:  7-element vector of generalized coordinates. 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    T:  [4x4] Homogenous transformation matrix relating the pose of joint 7 of 7 
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
%  See also LBR4pReal copy.
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
%    22-Apr-2015 11:50:14

q1 = in2(:,1);
q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
q6 = in2(:,6);
q7 = in2(:,7);
t2 = cos(q1);
t3 = cos(q4);
t4 = sin(q1);
t5 = sin(q3);
t6 = t4.*t5;
t7 = cos(q2);
t8 = cos(q3);
t13 = t2.*t7.*t8;
t9 = t6-t13;
t10 = sin(q2);
t11 = sin(q4);
t12 = sin(q5);
t14 = t3.*t9;
t15 = t2.*t10.*t11;
t16 = t14+t15;
t17 = cos(q5);
t18 = t4.*t8;
t19 = t2.*t5.*t7;
t20 = t18+t19;
t21 = sin(q7);
t22 = sin(q6);
t23 = t9.*t11;
t33 = t2.*t3.*t10;
t24 = t23-t33;
t25 = cos(q6);
t26 = t16.*t17;
t27 = t12.*t20;
t28 = t26+t27;
t29 = t22.*t24-t25.*t28;
t30 = cos(q7);
t31 = t12.*t16;
t32 = t31-t17.*t20;
t34 = t2.*t5;
t35 = t4.*t7.*t8;
t36 = t34+t35;
t37 = t3.*t36;
t45 = t4.*t10.*t11;
t38 = t37-t45;
t39 = t2.*t8;
t47 = t4.*t5.*t7;
t40 = t39-t47;
t41 = t11.*t36;
t42 = t3.*t4.*t10;
t43 = t41+t42;
t44 = t22.*t43;
t46 = t17.*t38;
t48 = t12.*t40;
t49 = t46+t48;
t50 = t44-t25.*t49;
t51 = t12.*t38;
t52 = t51-t17.*t40;
t53 = t7.*t11;
t54 = t3.*t8.*t10;
t55 = t53+t54;
t56 = t12.*t55;
t57 = t5.*t10.*t17;
t58 = t56+t57;
t59 = t17.*t55;
t66 = t5.*t10.*t12;
t60 = t59-t66;
t61 = t25.*t60;
t62 = t3.*t7;
t67 = t8.*t10.*t11;
t63 = t62-t67;
t64 = t22.*t63;
t65 = t61+t64;
T0_7 = reshape([t21.*t32+t29.*t30,-t21.*t52-t30.*t50,t21.*t58-t30.*t65,0.0,-t21.*t29+t30.*t32,t21.*t50-t30.*t52,t21.*t65+t30.*t58,0.0,-t24.*t25-t22.*t28,t25.*t43+t22.*t49,-t22.*t60+t25.*t63,0.0,t2.*t10.*(2.0./5.0)-t9.*t11.*(3.9e1./1.0e2)-t24.*t25.*(3.9e1./5.0e2)-t22.*t28.*(3.9e1./5.0e2)+t2.*t3.*t10.*(3.9e1./1.0e2),t4.*t10.*(2.0./5.0)+t11.*t36.*(3.9e1./1.0e2)+t25.*t43.*(3.9e1./5.0e2)+t22.*t49.*(3.9e1./5.0e2)+t3.*t4.*t10.*(3.9e1./1.0e2),t7.*(2.0./5.0)+t3.*t7.*(3.9e1./1.0e2)-t22.*t60.*(3.9e1./5.0e2)+t25.*t63.*(3.9e1./5.0e2)-t8.*t10.*t11.*(3.9e1./1.0e2)+3.1e1./1.0e2,1.0],[4, 4]);
