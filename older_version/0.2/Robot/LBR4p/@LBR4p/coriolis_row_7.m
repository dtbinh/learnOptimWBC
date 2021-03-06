function Crow = coriolis_row_7(rob,in2,in3)
%% CORIOLIS_ROW_7 - Computation of the robot specific Coriolis matrix row for joint 7 of 7. 
% ========================================================================= 
%    
%    Crow = coriolis_row_7(rob,q,qd) 
%    Crow = rob.coriolis_row_7(q,qd) 
%    
%  Description:: 
%    Given a full set of joint variables and their first order temporal derivatives this function computes the 
%    Coriolis matrix row number 7 of 7 for LBR4p copy. 
%    
%  Input:: 
%    rob: robot object of LBR4p copy specific class 
%    qd:  7-element vector of generalized 
%    q:  7-element vector of generalized 
%    
%  Output:: 
%    Crow:  [1x7] row of the robot Coriolis matrix 
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
%    This is an autogenerated function. 
%    Code generator written by: 
%    Joern Malzahn 
%    2012 RST, Technische Universitaet Dortmund, Germany 
%    http://www.rst.e-technik.tu-dortmund.de 
%    
%  See also coriolis.
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
%    23-Nov-2014 18:26:14

q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
q6 = in2(:,6);
qd1 = in3(:,1);
qd2 = in3(:,2);
qd3 = in3(:,3);
qd4 = in3(:,4);
qd5 = in3(:,5);
qd6 = in3(:,6);
t2 = cos(q6);
t3 = cos(q2);
t4 = sin(q2);
t5 = sin(q4);
t6 = sin(q6);
t7 = cos(q3);
t8 = cos(q4);
t9 = cos(q5);
t10 = sin(q3);
t11 = sin(q5);
t12 = t2.*t4.*t8.*1.584375e-4;
t13 = t2.*t3.*t5.*t7.*1.584375e-4;
t14 = t3.*t6.*t7.*t8.*t9.*1.584375e-4;
t15 = t12+t13+t14-t4.*t5.*t6.*t9.*1.584375e-4-t3.*t6.*t10.*t11.*1.584375e-4;
t16 = t2.*t5.*t7;
t17 = t6.*t7.*t8.*t9;
t18 = t16+t17-t6.*t10.*t11;
t19 = t2.*t5.*t10;
t20 = t6.*t7.*t11;
t21 = t6.*t8.*t9.*t10;
t22 = t19+t20+t21;
t23 = t2.*t3.*t5.*1.584375e-4;
t24 = t2.*t4.*t7.*t8.*1.584375e-4;
t25 = t3.*t6.*t8.*t9.*1.584375e-4;
t26 = t23+t24+t25-t4.*t5.*t6.*t7.*t9.*1.584375e-4;
t27 = t2.*t8;
t28 = t27-t5.*t6.*t9;
Crow = [qd2.*t15.*(-1.0./2.0)-qd4.*t26.*(1.0./2.0)-qd6.*(t3.*t6.*t8.*1.584375e-4+t2.*t3.*t5.*t9.*1.584375e-4-t4.*t5.*t6.*t7.*1.584375e-4-t2.*t4.*t10.*t11.*1.584375e-4+t2.*t4.*t7.*t8.*t9.*1.584375e-4).*(1.0./2.0)+qd5.*t6.*(t3.*t5.*t11+t4.*t9.*t10+t4.*t7.*t8.*t11).*7.921875e-5+qd3.*t4.*t22.*7.921875e-5,qd1.*t15.*(-1.0./2.0)+qd3.*t18.*7.921875e-5+qd6.*(t2.*t7.*t11-t5.*t6.*t10+t2.*t8.*t9.*t10).*7.921875e-5+qd5.*t6.*(t7.*t9-t8.*t10.*t11).*7.921875e-5+qd4.*t10.*t28.*7.921875e-5,qd4.*(t2.*t5+t6.*t8.*t9).*(-7.921875e-5)-qd6.*(t6.*t8+t2.*t5.*t9).*7.921875e-5+qd2.*t18.*7.921875e-5+qd1.*t4.*t22.*7.921875e-5+qd5.*t5.*t6.*t11.*7.921875e-5,qd1.*t26.*(-1.0./2.0)-qd3.*(t2.*t5.*1.584375e-4+t6.*t8.*t9.*1.584375e-4).*(1.0./2.0)+qd6.*t2.*t11.*7.921875e-5+qd5.*t6.*t9.*7.921875e-5+qd2.*t10.*t28.*7.921875e-5,t6.*(-qd6+qd4.*t9+qd2.*t7.*t9+qd3.*t5.*t11+qd1.*t3.*t5.*t11+qd1.*t4.*t9.*t10-qd2.*t8.*t10.*t11+qd1.*t4.*t7.*t8.*t11).*7.921875e-5,qd5.*t6.*(-7.921875e-5)-qd3.*t6.*t8.*7.921875e-5+qd4.*t2.*t11.*7.921875e-5-qd1.*t3.*t6.*t8.*7.921875e-5-qd3.*t2.*t5.*t9.*7.921875e-5+qd2.*t2.*t7.*t11.*7.921875e-5-qd2.*t5.*t6.*t10.*7.921875e-5-qd1.*t2.*t3.*t5.*t9.*7.921875e-5+qd1.*t4.*t5.*t6.*t7.*7.921875e-5+qd1.*t2.*t4.*t10.*t11.*7.921875e-5+qd2.*t2.*t8.*t9.*t10.*7.921875e-5-qd1.*t2.*t4.*t7.*t8.*t9.*7.921875e-5,0.0];
