function Crow = coriolis_row_3(rob,in2,in3)
%% CORIOLIS_ROW_3 - Computation of the robot specific Coriolis matrix row for joint 3 of 7. 
% ========================================================================= 
%    
%    Crow = coriolis_row_3(rob,q,qd) 
%    Crow = rob.coriolis_row_3(q,qd) 
%    
%  Description:: 
%    Given a full set of joint variables and their first order temporal derivatives this function computes the 
%    Coriolis matrix row number 3 of 7 for LBR4pSimple copy. 
%    
%  Input:: 
%    rob: robot object of LBR4pSimple copy specific class 
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
%    28-Feb-2016 23:20:32

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
qd7 = in3(:,7);
t2 = sin(q2);
t3 = cos(q3);
t4 = cos(q5);
t5 = cos(q6);
t6 = t3.^2;
t7 = cos(q4);
t8 = t4.^2;
t9 = t5.^2;
t10 = cos(q2);
t11 = sin(q4);
t12 = sin(q6);
t13 = sin(q5);
t14 = sin(q3);
t15 = t7.^2;
t16 = t10.^2;
t17 = q3.*2.0;
t18 = sin(t17);
t19 = q4.*2.0;
t20 = sin(t19);
t21 = q5.*2.0;
t22 = sin(t21);
Crow = [qd2.*t2.*(-9.06912972e-1)-qd1.*t18.*2.70323514e-1-qd4.*t2.*t3.*1.17756-qd2.*t2.*t6.*5.40647028e-1+qd2.*t2.*t8.*6.912972e-3+qd2.*t2.*t9.*6.912972e-3-qd6.*t10.*t12.*1.77606e-2-qd4.*t2.*t3.*t5.*3.55212e-2-qd2.*t2.*t5.*t6.*3.55212e-2-qd6.*t2.*t3.*t4.*(1.9e1./1.0e2)-qd2.*t2.*t6.*t8.*6.912972e-3-qd4.*t2.*t3.*t9.*6.912972e-3-qd2.*t2.*t6.*t9.*1.3825944e-2-qd2.*t2.*t8.*t9.*6.912972e-3-qd1.*t3.*t5.*t14.*3.55212e-2+qd4.*t2.*t3.*t15.*5.4756e-1+qd1.*t4.*t7.*t13.*6.912972e-3+qd2.*t2.*t6.*t15.*5.4756e-1-qd1.*t3.*t8.*t14.*6.912972e-3+qd2.*t3.*t10.*t11.*(3.51e2./6.25e2)-qd1.*t3.*t9.*t14.*1.3825944e-2-qd4.*t4.*t10.*t12.*1.77606e-2+qd4.*t7.*t10.*t11.*5.4756e-1-qd5.*t2.*t11.*t14.*3.66912972e-1+qd5.*t4.*t10.*t13.*6.912972e-3+qd1.*t3.*t14.*t15.*5.4756e-1+qd1.*t3.*t14.*t16.*5.40647028e-1+qd1.*t11.*t12.*t13.*1.77606e-2+qd6.*t10.*t12.*t15.*1.77606e-2-qd6.*t2.*t3.*t4.*t5.*1.77606e-2-qd6.*t2.*t3.*t4.*t9.*6.912972e-3+qd2.*t2.*t6.*t8.*t9.*6.912972e-3+qd4.*t2.*t3.*t5.*t15.*3.55212e-2+qd2.*t2.*t5.*t6.*t15.*3.55212e-2-qd6.*t2.*t3.*t4.*t15.*6.912972e-3-qd1.*t4.*t6.*t7.*t13.*1.3825944e-2-qd2.*t3.*t4.*t10.*t12.*1.77606e-2+qd2.*t3.*t5.*t10.*t11.*1.8216e-2-qd4.*t2.*t3.*t8.*t15.*6.912972e-3-qd2.*t2.*t6.*t8.*t15.*6.912972e-3+qd2.*t3.*t7.*t10.*t11.*5.4756e-1+qd4.*t2.*t3.*t9.*t15.*6.912972e-3-qd1.*t4.*t7.*t9.*t13.*6.912972e-3+qd2.*t2.*t6.*t9.*t15.*6.912972e-3+qd1.*t3.*t8.*t9.*t14.*6.912972e-3-qd4.*t4.*t5.*t10.*t12.*6.912972e-3+qd5.*t2.*t3.*t12.*t13.*1.77606e-2+qd4.*t5.*t7.*t10.*t11.*3.55212e-2-qd7.*t2.*t3.*t12.*t13.*(3.0./1.0e2)+qd1.*t2.*t10.*t11.*t14.*(3.51e2./6.25e2)+qd1.*t3.*t5.*t14.*t15.*3.55212e-2-qd6.*t4.*t7.*t10.*t11.*6.912972e-3+qd1.*t3.*t5.*t14.*t16.*3.55212e-2-qd7.*t2.*t5.*t11.*t14.*(3.0./1.0e2)-qd4.*t7.*t8.*t10.*t11.*6.912972e-3+qd5.*t2.*t8.*t11.*t14.*6.912972e-3-qd1.*t3.*t8.*t14.*t15.*6.912972e-3-qd1.*t4.*t7.*t13.*t16.*6.912972e-3+qd4.*t7.*t9.*t10.*t11.*6.912972e-3+qd5.*t2.*t9.*t11.*t14.*6.912972e-3-qd5.*t4.*t9.*t10.*t13.*6.912972e-3-qd6.*t5.*t8.*t10.*t12.*6.912972e-3+qd1.*t3.*t8.*t14.*t16.*6.912972e-3+qd1.*t3.*t9.*t14.*t15.*6.912972e-3+qd1.*t5.*t11.*t12.*t13.*6.912972e-3+qd6.*t2.*t7.*t13.*t14.*1.96912972e-1+qd1.*t3.*t9.*t14.*t16.*1.3825944e-2-qd1.*t6.*t11.*t12.*t13.*3.55212e-2+qd4.*t4.*t10.*t12.*t15.*3.55212e-2-qd5.*t4.*t10.*t13.*t15.*6.912972e-3+qd6.*t5.*t10.*t12.*t15.*6.912972e-3-qd1.*t3.*t14.*t15.*t16.*5.4756e-1-qd2.*t10.*t12.*t13.*t14.*1.8216e-2-qd1.*t11.*t12.*t13.*t16.*1.77606e-2+qd6.*t2.*t3.*t4.*t5.*t15.*1.77606e-2-qd2.*t3.*t4.*t5.*t10.*t12.*6.912972e-3+qd2.*t3.*t4.*t7.*t10.*t12.*1.8216e-2+qd2.*t3.*t5.*t7.*t10.*t11.*3.55212e-2+qd6.*t2.*t3.*t4.*t9.*t15.*1.3825944e-2+qd1.*t4.*t6.*t7.*t9.*t13.*1.3825944e-2+qd5.*t2.*t3.*t5.*t12.*t13.*6.912972e-3+qd1.*t2.*t3.*t10.*t12.*t13.*1.8216e-2-qd2.*t3.*t7.*t8.*t10.*t11.*6.912972e-3+qd4.*t2.*t3.*t8.*t9.*t15.*6.912972e-3-qd6.*t2.*t3.*t7.*t11.*t12.*1.77606e-2+qd2.*t2.*t6.*t8.*t9.*t15.*6.912972e-3+qd2.*t3.*t7.*t9.*t10.*t11.*6.912972e-3-qd1.*t2.*t4.*t10.*t12.*t14.*1.77606e-2+qd1.*t2.*t5.*t10.*t11.*t14.*1.8216e-2+qd6.*t4.*t5.*t7.*t10.*t11.*1.77606e-2+qd4.*t2.*t4.*t7.*t13.*t14.*6.912972e-3+qd1.*t2.*t7.*t10.*t11.*t14.*5.4756e-1+qd2.*t3.*t4.*t10.*t12.*t15.*3.55212e-2-qd7.*t2.*t4.*t7.*t12.*t14.*(3.0./1.0e2)+qd1.*t4.*t6.*t7.*t13.*t16.*1.3825944e-2+qd6.*t4.*t7.*t9.*t10.*t11.*1.3825944e-2-qd1.*t5.*t6.*t11.*t12.*t13.*1.3825944e-2+qd4.*t7.*t8.*t9.*t10.*t11.*6.912972e-3-qd5.*t2.*t8.*t9.*t11.*t14.*6.912972e-3+qd1.*t3.*t8.*t9.*t14.*t15.*6.912972e-3+qd1.*t4.*t7.*t9.*t13.*t16.*6.912972e-3+qd4.*t4.*t5.*t10.*t12.*t15.*1.3825944e-2-qd5.*t2.*t3.*t12.*t13.*t15.*1.77606e-2-qd1.*t3.*t8.*t9.*t14.*t16.*6.912972e-3-qd6.*t2.*t7.*t9.*t13.*t14.*6.912972e-3-qd1.*t3.*t5.*t14.*t15.*t16.*3.55212e-2+qd2.*t4.*t10.*t11.*t13.*t14.*6.912972e-3+qd4.*t2.*t11.*t12.*t13.*t14.*1.77606e-2+qd5.*t4.*t9.*t10.*t13.*t15.*6.912972e-3+qd6.*t5.*t8.*t10.*t12.*t15.*6.912972e-3+qd1.*t3.*t8.*t14.*t15.*t16.*6.912972e-3-qd1.*t3.*t9.*t14.*t15.*t16.*6.912972e-3-qd1.*t5.*t11.*t12.*t13.*t16.*6.912972e-3-qd2.*t7.*t10.*t12.*t13.*t14.*1.77606e-2-qd5.*t7.*t10.*t11.*t12.*t13.*1.77606e-2+qd1.*t6.*t11.*t12.*t13.*t16.*3.55212e-2-qd4.*t2.*t3.*t4.*t7.*t11.*t12.*3.55212e-2-qd1.*t2.*t3.*t4.*t10.*t11.*t13.*6.912972e-3-qd2.*t2.*t4.*t6.*t7.*t11.*t12.*3.55212e-2+qd2.*t2.*t3.*t4.*t7.*t13.*t14.*1.3825944e-2+qd5.*t2.*t3.*t4.*t7.*t11.*t13.*6.912972e-3-qd6.*t2.*t3.*t5.*t7.*t11.*t12.*6.912972e-3+qd1.*t2.*t3.*t7.*t10.*t12.*t13.*1.77606e-2-qd1.*t2.*t4.*t5.*t10.*t12.*t14.*6.912972e-3+qd1.*t2.*t4.*t7.*t10.*t12.*t14.*1.8216e-2+qd1.*t2.*t5.*t7.*t10.*t11.*t14.*3.55212e-2+qd2.*t3.*t7.*t8.*t9.*t10.*t11.*6.912972e-3+qd2.*t3.*t4.*t5.*t10.*t12.*t15.*1.3825944e-2-qd1.*t3.*t4.*t7.*t11.*t12.*t14.*3.55212e-2-qd1.*t2.*t7.*t8.*t10.*t11.*t14.*6.912972e-3-qd4.*t2.*t4.*t7.*t9.*t13.*t14.*6.912972e-3+qd1.*t2.*t7.*t9.*t10.*t11.*t14.*6.912972e-3-qd5.*t2.*t3.*t5.*t12.*t13.*t15.*6.912972e-3-qd1.*t4.*t6.*t7.*t9.*t13.*t16.*1.3825944e-2+qd2.*t2.*t3.*t11.*t12.*t13.*t14.*3.55212e-2+qd1.*t2.*t4.*t10.*t12.*t14.*t15.*3.55212e-2+qd4.*t2.*t5.*t11.*t12.*t13.*t14.*6.912972e-3-qd2.*t4.*t9.*t10.*t11.*t13.*t14.*6.912972e-3-qd2.*t5.*t7.*t10.*t12.*t13.*t14.*6.912972e-3-qd5.*t5.*t7.*t10.*t11.*t12.*t13.*6.912972e-3+qd1.*t5.*t6.*t11.*t12.*t13.*t16.*1.3825944e-2-qd1.*t3.*t8.*t9.*t14.*t15.*t16.*6.912972e-3-qd4.*t2.*t3.*t4.*t5.*t7.*t11.*t12.*1.3825944e-2-qd2.*t2.*t4.*t5.*t6.*t7.*t11.*t12.*1.3825944e-2+qd1.*t2.*t3.*t4.*t9.*t10.*t11.*t13.*6.912972e-3+qd1.*t2.*t3.*t5.*t7.*t10.*t12.*t13.*6.912972e-3-qd2.*t2.*t3.*t4.*t7.*t9.*t13.*t14.*1.3825944e-2-qd5.*t2.*t3.*t4.*t7.*t9.*t11.*t13.*6.912972e-3-qd6.*t2.*t3.*t5.*t7.*t8.*t11.*t12.*6.912972e-3-qd1.*t3.*t4.*t5.*t7.*t11.*t12.*t14.*1.3825944e-2+qd1.*t2.*t7.*t8.*t9.*t10.*t11.*t14.*6.912972e-3+qd2.*t2.*t3.*t5.*t11.*t12.*t13.*t14.*1.3825944e-2+qd1.*t2.*t4.*t5.*t10.*t12.*t14.*t15.*1.3825944e-2+qd6.*t2.*t4.*t5.*t11.*t12.*t13.*t14.*6.912972e-3+qd1.*t3.*t4.*t7.*t11.*t12.*t14.*t16.*3.55212e-2+qd1.*t3.*t4.*t5.*t7.*t11.*t12.*t14.*t16.*1.3825944e-2,qd1.*t2.*(-9.06912972e-1)+qd4.*t14.*1.17756+qd2.*t18.*2.70323514e-1-qd1.*t2.*t6.*5.40647028e-1+qd1.*t2.*t8.*6.912972e-3+qd1.*t2.*t9.*6.912972e-3-qd5.*t3.*t11.*3.66912972e-1+qd4.*t5.*t14.*3.55212e-2+qd6.*t4.*t14.*(1.9e1./1.0e2)+qd4.*t9.*t14.*6.912972e-3-qd4.*t14.*t15.*5.4756e-1-qd1.*t2.*t5.*t6.*3.55212e-2-qd1.*t2.*t6.*t8.*6.912972e-3-qd1.*t2.*t6.*t9.*1.3825944e-2-qd1.*t2.*t8.*t9.*6.912972e-3+qd1.*t2.*t6.*t15.*5.4756e-1+qd2.*t3.*t5.*t14.*3.55212e-2+qd1.*t3.*t10.*t11.*(3.51e2./6.25e2)-qd2.*t4.*t7.*t13.*6.912972e-3-qd7.*t3.*t5.*t11.*(3.0./1.0e2)+qd2.*t3.*t8.*t14.*6.912972e-3+qd5.*t3.*t8.*t11.*6.912972e-3+qd2.*t3.*t9.*t14.*1.3825944e-2+qd5.*t3.*t9.*t11.*6.912972e-3+qd6.*t3.*t7.*t13.*1.96912972e-1+qd6.*t4.*t5.*t14.*1.77606e-2+qd6.*t4.*t9.*t14.*6.912972e-3-qd2.*t3.*t14.*t15.*5.4756e-1-qd2.*t11.*t12.*t13.*1.77606e-2-qd4.*t5.*t14.*t15.*3.55212e-2+qd6.*t4.*t14.*t15.*6.912972e-3+qd4.*t8.*t14.*t15.*6.912972e-3-qd4.*t9.*t14.*t15.*6.912972e-3-qd5.*t12.*t13.*t14.*1.77606e-2+qd7.*t12.*t13.*t14.*(3.0./1.0e2)+qd1.*t2.*t6.*t8.*t9.*6.912972e-3+qd1.*t2.*t5.*t6.*t15.*3.55212e-2-qd1.*t3.*t4.*t10.*t12.*1.77606e-2+qd1.*t3.*t5.*t10.*t11.*1.8216e-2+qd4.*t3.*t4.*t7.*t13.*6.912972e-3-qd1.*t2.*t6.*t8.*t15.*6.912972e-3+qd1.*t3.*t7.*t10.*t11.*5.4756e-1+qd2.*t4.*t6.*t7.*t13.*1.3825944e-2+qd1.*t2.*t6.*t9.*t15.*6.912972e-3-qd7.*t3.*t4.*t7.*t12.*(3.0./1.0e2)+qd2.*t4.*t7.*t9.*t13.*6.912972e-3-qd2.*t3.*t8.*t9.*t14.*6.912972e-3-qd5.*t3.*t8.*t9.*t11.*6.912972e-3-qd6.*t3.*t7.*t9.*t13.*6.912972e-3-qd2.*t3.*t5.*t14.*t15.*3.55212e-2+qd2.*t3.*t8.*t14.*t15.*6.912972e-3-qd2.*t3.*t9.*t14.*t15.*6.912972e-3-qd2.*t5.*t11.*t12.*t13.*6.912972e-3+qd4.*t3.*t11.*t12.*t13.*1.77606e-2+qd2.*t6.*t11.*t12.*t13.*3.55212e-2-qd6.*t4.*t5.*t14.*t15.*1.77606e-2-qd6.*t4.*t9.*t14.*t15.*1.3825944e-2-qd5.*t5.*t12.*t13.*t14.*6.912972e-3-qd1.*t10.*t12.*t13.*t14.*1.8216e-2-qd4.*t8.*t9.*t14.*t15.*6.912972e-3+qd6.*t7.*t11.*t12.*t14.*1.77606e-2+qd5.*t12.*t13.*t14.*t15.*1.77606e-2-qd1.*t3.*t4.*t5.*t10.*t12.*6.912972e-3+qd1.*t3.*t4.*t7.*t10.*t12.*1.8216e-2+qd1.*t3.*t5.*t7.*t10.*t11.*3.55212e-2-qd1.*t3.*t7.*t8.*t10.*t11.*6.912972e-3-qd4.*t3.*t4.*t7.*t9.*t13.*6.912972e-3+qd1.*t2.*t6.*t8.*t9.*t15.*6.912972e-3+qd1.*t3.*t7.*t9.*t10.*t11.*6.912972e-3-qd2.*t4.*t6.*t7.*t9.*t13.*1.3825944e-2+qd1.*t3.*t4.*t10.*t12.*t15.*3.55212e-2+qd4.*t3.*t5.*t11.*t12.*t13.*6.912972e-3+qd2.*t5.*t6.*t11.*t12.*t13.*1.3825944e-2-qd2.*t3.*t8.*t9.*t14.*t15.*6.912972e-3+qd4.*t4.*t7.*t11.*t12.*t14.*3.55212e-2+qd1.*t4.*t10.*t11.*t13.*t14.*6.912972e-3-qd5.*t4.*t7.*t11.*t13.*t14.*6.912972e-3+qd6.*t5.*t7.*t11.*t12.*t14.*6.912972e-3-qd1.*t7.*t10.*t12.*t13.*t14.*1.77606e-2+qd5.*t5.*t12.*t13.*t14.*t15.*6.912972e-3-qd1.*t2.*t4.*t6.*t7.*t11.*t12.*3.55212e-2+qd1.*t2.*t3.*t4.*t7.*t13.*t14.*1.3825944e-2+qd1.*t3.*t7.*t8.*t9.*t10.*t11.*6.912972e-3+qd1.*t3.*t4.*t5.*t10.*t12.*t15.*1.3825944e-2+qd2.*t3.*t4.*t7.*t11.*t12.*t14.*3.55212e-2+qd6.*t3.*t4.*t5.*t11.*t12.*t13.*6.912972e-3+qd1.*t2.*t3.*t11.*t12.*t13.*t14.*3.55212e-2+qd4.*t4.*t5.*t7.*t11.*t12.*t14.*1.3825944e-2-qd1.*t4.*t9.*t10.*t11.*t13.*t14.*6.912972e-3-qd1.*t5.*t7.*t10.*t12.*t13.*t14.*6.912972e-3+qd5.*t4.*t7.*t9.*t11.*t13.*t14.*6.912972e-3+qd6.*t5.*t7.*t8.*t11.*t12.*t14.*6.912972e-3-qd1.*t2.*t4.*t5.*t6.*t7.*t11.*t12.*1.3825944e-2-qd1.*t2.*t3.*t4.*t7.*t9.*t13.*t14.*1.3825944e-2+qd2.*t3.*t4.*t5.*t7.*t11.*t12.*t14.*1.3825944e-2+qd1.*t2.*t3.*t5.*t11.*t12.*t13.*t14.*1.3825944e-2,qd6.*t12.*(-1.77606e-2)+qd4.*t20.*2.7378e-1+qd5.*t22.*3.456486e-3-qd4.*t4.*t12.*1.77606e-2+qd6.*t12.*t15.*1.77606e-2-qd4.*t4.*t5.*t12.*6.912972e-3+qd4.*t5.*t7.*t11.*3.55212e-2-qd6.*t4.*t7.*t11.*6.912972e-3-qd4.*t7.*t8.*t11.*6.912972e-3+qd4.*t7.*t9.*t11.*6.912972e-3-qd5.*t4.*t9.*t13.*6.912972e-3-qd6.*t5.*t8.*t12.*6.912972e-3+qd4.*t4.*t12.*t15.*3.55212e-2-qd5.*t4.*t13.*t15.*6.912972e-3+qd6.*t5.*t12.*t15.*6.912972e-3+qd6.*t4.*t5.*t7.*t11.*1.77606e-2+qd6.*t4.*t7.*t9.*t11.*1.3825944e-2+qd4.*t7.*t8.*t9.*t11.*6.912972e-3+qd4.*t4.*t5.*t12.*t15.*1.3825944e-2+qd5.*t4.*t9.*t13.*t15.*6.912972e-3+qd6.*t5.*t8.*t12.*t15.*6.912972e-3-qd5.*t7.*t11.*t12.*t13.*1.77606e-2-qd5.*t5.*t7.*t11.*t12.*t13.*6.912972e-3,qd2.*t14.*1.17756-qd5.*t11.*3.66912972e-1+qd3.*t20.*2.7378e-1-qd1.*t2.*t3.*1.17756-qd3.*t4.*t12.*1.77606e-2+qd2.*t5.*t14.*3.55212e-2-qd7.*t5.*t11.*(3.0./1.0e2)+qd5.*t8.*t11.*6.912972e-3+qd2.*t9.*t14.*6.912972e-3+qd5.*t9.*t11.*6.912972e-3+qd6.*t7.*t13.*1.96912972e-1-qd2.*t14.*t15.*5.4756e-1-qd1.*t2.*t3.*t5.*3.55212e-2-qd1.*t2.*t3.*t9.*6.912972e-3+qd1.*t2.*t3.*t15.*5.4756e-1-qd3.*t4.*t5.*t12.*6.912972e-3+qd3.*t5.*t7.*t11.*3.55212e-2-qd1.*t4.*t10.*t12.*1.77606e-2+qd4.*t4.*t7.*t13.*6.912972e-3+qd1.*t7.*t10.*t11.*5.4756e-1-qd3.*t7.*t8.*t11.*6.912972e-3+qd3.*t7.*t9.*t11.*6.912972e-3-qd7.*t4.*t7.*t12.*(3.0./1.0e2)-qd5.*t8.*t9.*t11.*6.912972e-3+qd3.*t4.*t12.*t15.*3.55212e-2-qd6.*t7.*t9.*t13.*6.912972e-3-qd2.*t5.*t14.*t15.*3.55212e-2+qd2.*t8.*t14.*t15.*6.912972e-3-qd2.*t9.*t14.*t15.*6.912972e-3+qd4.*t11.*t12.*t13.*1.77606e-2+qd1.*t2.*t3.*t5.*t15.*3.55212e-2-qd1.*t2.*t3.*t8.*t15.*6.912972e-3+qd2.*t3.*t4.*t7.*t13.*6.912972e-3+qd1.*t2.*t3.*t9.*t15.*6.912972e-3-qd1.*t4.*t5.*t10.*t12.*6.912972e-3+qd1.*t5.*t7.*t10.*t11.*3.55212e-2-qd1.*t7.*t8.*t10.*t11.*6.912972e-3-qd4.*t4.*t7.*t9.*t13.*6.912972e-3+qd1.*t7.*t9.*t10.*t11.*6.912972e-3+qd3.*t7.*t8.*t9.*t11.*6.912972e-3+qd3.*t4.*t5.*t12.*t15.*1.3825944e-2+qd2.*t3.*t11.*t12.*t13.*1.77606e-2+qd1.*t4.*t10.*t12.*t15.*3.55212e-2+qd4.*t5.*t11.*t12.*t13.*6.912972e-3-qd2.*t8.*t9.*t14.*t15.*6.912972e-3+qd1.*t2.*t3.*t8.*t9.*t15.*6.912972e-3-qd2.*t3.*t4.*t7.*t9.*t13.*6.912972e-3+qd1.*t2.*t4.*t7.*t13.*t14.*6.912972e-3+qd1.*t7.*t8.*t9.*t10.*t11.*6.912972e-3+qd2.*t3.*t5.*t11.*t12.*t13.*6.912972e-3+qd1.*t4.*t5.*t10.*t12.*t15.*1.3825944e-2+qd2.*t4.*t7.*t11.*t12.*t14.*3.55212e-2+qd6.*t4.*t5.*t11.*t12.*t13.*6.912972e-3+qd1.*t2.*t11.*t12.*t13.*t14.*1.77606e-2-qd1.*t2.*t3.*t4.*t7.*t11.*t12.*3.55212e-2-qd1.*t2.*t4.*t7.*t9.*t13.*t14.*6.912972e-3+qd2.*t4.*t5.*t7.*t11.*t12.*t14.*1.3825944e-2+qd1.*t2.*t5.*t11.*t12.*t13.*t14.*6.912972e-3-qd1.*t2.*t3.*t4.*t5.*t7.*t11.*t12.*1.3825944e-2,qd4.*t11.*(-3.66912972e-1)+qd3.*t22.*3.456486e-3-qd2.*t3.*t11.*3.66912972e-1+qd6.*t4.*t11.*(1.9e1./1.0e2)+qd4.*t8.*t11.*6.912972e-3+qd4.*t9.*t11.*6.912972e-3+qd2.*t3.*t8.*t11.*6.912972e-3+qd2.*t3.*t9.*t11.*6.912972e-3+qd6.*t4.*t5.*t11.*1.77606e-2-qd1.*t2.*t11.*t14.*3.66912972e-1+qd1.*t4.*t10.*t13.*6.912972e-3-qd3.*t4.*t9.*t13.*6.912972e-3+qd6.*t4.*t9.*t11.*6.912972e-3+qd6.*t5.*t7.*t12.*6.912972e-3-qd4.*t8.*t9.*t11.*6.912972e-3-qd3.*t4.*t13.*t15.*6.912972e-3-qd2.*t12.*t13.*t14.*1.77606e-2-qd5.*t11.*t12.*t13.*1.77606e-2+qd7.*t11.*t12.*t13.*(3.0./1.0e2)+qd1.*t2.*t3.*t12.*t13.*1.77606e-2-qd2.*t3.*t8.*t9.*t11.*6.912972e-3+qd1.*t2.*t8.*t11.*t14.*6.912972e-3+qd1.*t2.*t9.*t11.*t14.*6.912972e-3-qd1.*t4.*t9.*t10.*t13.*6.912972e-3-qd1.*t4.*t10.*t13.*t15.*6.912972e-3+qd3.*t4.*t9.*t13.*t15.*6.912972e-3-qd2.*t5.*t12.*t13.*t14.*6.912972e-3-qd3.*t7.*t11.*t12.*t13.*1.77606e-2-qd5.*t5.*t11.*t12.*t13.*6.912972e-3+qd2.*t12.*t13.*t14.*t15.*1.77606e-2+qd1.*t2.*t3.*t5.*t12.*t13.*6.912972e-3-qd1.*t2.*t8.*t9.*t11.*t14.*6.912972e-3-qd1.*t2.*t3.*t12.*t13.*t15.*1.77606e-2-qd2.*t4.*t7.*t11.*t13.*t14.*6.912972e-3-qd3.*t5.*t7.*t11.*t12.*t13.*6.912972e-3+qd1.*t4.*t9.*t10.*t13.*t15.*6.912972e-3-qd1.*t7.*t10.*t11.*t12.*t13.*1.77606e-2+qd2.*t5.*t12.*t13.*t14.*t15.*6.912972e-3+qd1.*t2.*t3.*t4.*t7.*t11.*t13.*6.912972e-3-qd1.*t2.*t3.*t5.*t12.*t13.*t15.*6.912972e-3-qd1.*t5.*t7.*t10.*t11.*t12.*t13.*6.912972e-3+qd2.*t4.*t7.*t9.*t11.*t13.*t14.*6.912972e-3-qd1.*t2.*t3.*t4.*t7.*t9.*t11.*t13.*6.912972e-3,qd3.*t12.*(-1.77606e-2)+qd2.*t4.*t14.*(1.9e1./1.0e2)+qd5.*t4.*t11.*(1.9e1./1.0e2)-qd1.*t10.*t12.*1.77606e-2+qd4.*t7.*t13.*1.96912972e-1-qd7.*t7.*t12.*(3.0./1.0e2)+qd3.*t12.*t15.*1.77606e-2-qd1.*t2.*t3.*t4.*(1.9e1./1.0e2)+qd2.*t3.*t7.*t13.*1.96912972e-1+qd2.*t4.*t5.*t14.*1.77606e-2-qd3.*t4.*t7.*t11.*6.912972e-3+qd5.*t4.*t5.*t11.*1.77606e-2-qd7.*t4.*t5.*t11.*(3.0./1.0e2)-qd3.*t5.*t8.*t12.*6.912972e-3+qd2.*t4.*t9.*t14.*6.912972e-3+qd5.*t4.*t9.*t11.*6.912972e-3+qd5.*t5.*t7.*t12.*6.912972e-3-qd4.*t7.*t9.*t13.*6.912972e-3+qd2.*t4.*t14.*t15.*6.912972e-3+qd3.*t5.*t12.*t15.*6.912972e-3+qd1.*t10.*t12.*t15.*1.77606e-2-qd6.*t11.*t12.*t13.*1.77606e-2-qd1.*t2.*t3.*t4.*t5.*1.77606e-2-qd1.*t2.*t3.*t4.*t9.*6.912972e-3-qd1.*t2.*t3.*t4.*t15.*6.912972e-3+qd3.*t4.*t5.*t7.*t11.*1.77606e-2-qd1.*t4.*t7.*t10.*t11.*6.912972e-3-qd2.*t3.*t7.*t9.*t13.*6.912972e-3+qd3.*t4.*t7.*t9.*t11.*1.3825944e-2-qd1.*t5.*t8.*t10.*t12.*6.912972e-3+qd1.*t2.*t7.*t13.*t14.*1.96912972e-1-qd2.*t4.*t5.*t14.*t15.*1.77606e-2+qd1.*t5.*t10.*t12.*t15.*6.912972e-3+qd3.*t5.*t8.*t12.*t15.*6.912972e-3-qd2.*t4.*t9.*t14.*t15.*1.3825944e-2+qd2.*t7.*t11.*t12.*t14.*1.77606e-2+qd1.*t2.*t3.*t4.*t5.*t15.*1.77606e-2+qd1.*t2.*t3.*t4.*t9.*t15.*1.3825944e-2-qd1.*t2.*t3.*t7.*t11.*t12.*1.77606e-2+qd1.*t4.*t5.*t7.*t10.*t11.*1.77606e-2+qd1.*t4.*t7.*t9.*t10.*t11.*1.3825944e-2-qd1.*t2.*t7.*t9.*t13.*t14.*6.912972e-3+qd4.*t4.*t5.*t11.*t12.*t13.*6.912972e-3+qd1.*t5.*t8.*t10.*t12.*t15.*6.912972e-3+qd2.*t5.*t7.*t11.*t12.*t14.*6.912972e-3-qd1.*t2.*t3.*t5.*t7.*t11.*t12.*6.912972e-3+qd2.*t3.*t4.*t5.*t11.*t12.*t13.*6.912972e-3+qd2.*t5.*t7.*t8.*t11.*t12.*t14.*6.912972e-3-qd1.*t2.*t3.*t5.*t7.*t8.*t11.*t12.*6.912972e-3+qd1.*t2.*t4.*t5.*t11.*t12.*t13.*t14.*6.912972e-3,qd4.*t5.*t11.*(-3.0./1.0e2)-qd6.*t7.*t12.*(3.0./1.0e2)-qd2.*t3.*t5.*t11.*(3.0./1.0e2)-qd6.*t4.*t5.*t11.*(3.0./1.0e2)-qd4.*t4.*t7.*t12.*(3.0./1.0e2)+qd2.*t12.*t13.*t14.*(3.0./1.0e2)+qd5.*t11.*t12.*t13.*(3.0./1.0e2)-qd2.*t3.*t4.*t7.*t12.*(3.0./1.0e2)-qd1.*t2.*t3.*t12.*t13.*(3.0./1.0e2)-qd1.*t2.*t5.*t11.*t14.*(3.0./1.0e2)-qd1.*t2.*t4.*t7.*t12.*t14.*(3.0./1.0e2)];
