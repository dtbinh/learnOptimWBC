function Irow = inertia_row_5(rob,in2)
%% INERTIA_ROW_5 - Computation of the robot specific inertia matrix row for corresponding to joint 5 of 6. 
% ========================================================================= 
%    
%    Irow = inertia_row_5(rob,q) 
%    Irow = rob.inertia_row_5(q) 
%    
%  Description:: 
%    Given a full set of joint variables this function computes the 
%    inertia matrix row number 5 of 6 for Puma 560 copy. 
%    
%  Input:: 
%    rob: robot object of Puma 560 copy specific class 
%    q:  6-element vector of generalized 
%         coordinates 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    Irow:  [1x6] row of the robot inertia matrix 
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
%    22-Nov-2014 18:28:05

q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
t2 = cos(q2);
t3 = sin(q4);
t4 = sin(q3);
t5 = cos(q3);
t6 = sin(q2);
t7 = sin(q5);
t8 = cos(q5);
t9 = cos(q4);
t10 = t9.*6.4216e-4;
t11 = t8.*t9.*1.243584e-3;
Irow = [t2.*t3.*t4.*6.4216e-4-t2.*t3.*t8.*1.243584e-3+t2.*t4.*t7.*4.32144e-4+t3.*t5.*t6.*6.4216e-4+t5.*t6.*t7.*4.32144e-4+t2.*t3.*t4.*t8.*1.243584e-3-t2.*t3.*t5.*t8.*5.8464e-5+t3.*t4.*t6.*t8.*5.8464e-5+t3.*t5.*t6.*t8.*1.243584e-3-t2.*t5.*t8.*t9.*4.32144e-4+t4.*t6.*t8.*t9.*4.32144e-4,t7.*(-5.8464e-5)+t10+t11-t5.*t7.*1.243584e-3-t4.*t8.*t9.*1.243584e-3,t7.*(-5.8464e-5)+t10+t11,0.0,1.71348451657e-1,0.0];
