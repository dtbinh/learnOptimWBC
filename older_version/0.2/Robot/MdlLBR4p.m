%MDL_LBR4p Create model of LBR4+ manipulator
%
%      MDL_LBR4p
%
% Script creates the variable LBR4p which describes the 
% kinematic and dynamic characteristics of a Kuka LBR4+ manipulator
% using standard DH conventions.
% The model  does NOT includes armature inertia and gear ratios.
%
% Also define the workspace vectors:
%   qz         starting configuration
%   qr         vertical strech configuration
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



function [LBR4p] = MdlLBR4p()
   clear L
   deg = pi/180;
  
   % the x axes between matlab and v-rep are rotated of 180 degrees so for
   % this reason i have to invert al the d-h parameter to have the same
   % axis orientation.
   % to solve every issue is sufficient to do the d-h artenberg assignation
   % as doing before and then rotate the robot on v-rep of 180 degrees
   
   % there is an error in the document from Massimo the z3 axis is oriented
   % like z1 and z5 in the v-rep model
   
   l0 = 0.11;
   l1 = 0.2;
   l2 = 0.2;
   l3 = 0.2;
   l4 = 0.2;
   l5 = 0.19;
   offset = 0.078;
   
   
   L(1) = Revolute('d', l0 + l1 , 'a', 0, 'alpha', -pi/2, ...
       'I', [0.016340536683981,0.005026130247583,0.016173076285877,0.000003026772299,0.003533064213839,-0.000000709016801], ...
       'r', [0.001340 -0.087777 -0.026220], ...
       'm', 2.7,...
       'qlim', [-170 170]*deg,...
       'B', 1.48e-3, ...
       'Tc', [0.395 -0.435],...
       'Jm', 200e-6, ...
       'G', -62.6111);

   L(2) = Revolute('d', 0, 'a', 0, 'alpha', +pi/2, ...
       'I', [0.016340543235640,0.016173082837536,0.005026130575166,-0.000000708736804,0.003533229970806,0.000003025958460], ...
       'r', [0.001340 -0.026220 0.087777], ...
       'm', 2.7,...
       'qlim', [-120 120]*deg,...
       'B', .817e-3, ...
       'Tc', [0.126 -0.071], ...
       'Jm', 200e-6, ...
       'G', 107.815);

   L(3) = Revolute('d',l2 + l3, 'a',0, 'alpha', -pi/2,  ...
       'I', [0.016340536683981,0.005026130247583,0.016173076285877,-0.000003025038092,-0.003533064213839,-0.000000708435613], ...
       'r', [-0.001340 , 0.087777 , -0.026220], ...
       'm', 2.7,...
       'qlim', [-170 170]*deg, ...
       'B', 1.38e-3, ...
       'Tc', [0.132, -0.105],...
       'Jm', 200e-6, ...
       'G', -53.7063);

   L(4) = Revolute('d', 0, 'a', 0, 'alpha', +pi/2,  ...
       'I', [0.016340536683981,0.016173076285877,0.005026130247583,-0.000000708770474,-0.003533064213839,-0.000003026399929], ...
       'r', [-0.001340 0.026220 0.087777], ...
       'm', 2.7,...
       'qlim', [-120 120]*deg, ...
       'B', 71.2e-6, ...
       'Tc', [11.2e-3, -16.9e-3],...
       'Jm', 33e-6, ...
       'G', 76.0364);

   L(5) = Revolute('d',l4 + l5, 'a', 0, 'alpha', -pi/2,  ...
       'I', [0.009818395861149,0.003708097004077,0.009092404844472,-0.000001329981455,0.003093942172699,0.000000761816372], ...
       'r', [-0.000993 -0.111650 -0.026958], ...
       'm', 1.7,...
       'qlim', [-170 170]*deg, ...
       'B', 82.6e-6, ...
       'Tc', [9.26e-3, -14.5e-3],...
       'Jm', 33e-6, ...
       'G', 71.923);


   L(6) = Revolute('d', 0, 'a', 0, 'alpha', +pi/2,  ...
       'I', [0.003011683905727,0.003022943456485,0.003413632286504,0.000000005040330,-0.000019307179987,-0.000000115610566], ...
       'r', [-0.000259 -0.005956 -0.005328], ...
       'm', 1.6,...
       'qlim', [-120 120]*deg,...
       'B', 36.7e-6, ...
       'Tc', [3.96e-3, -10.5e-3],...
        'Jm', 33e-6, ...
        'G', 76.686);

   L(7) = Revolute('d', offset, 'a', 0, 'alpha', 0,  ...
       'I', [0.00010171875,0.00010171875,0.0001584375,0,0,0], ...
       'r', [0 0 0.063], ...
       'm', 0.3,...
       'qlim', [-170 170]*deg,...
       'B', 36.7e-6, ...
       'Tc', [3.96e-3, -10.5e-3], ...
       'Jm', 33e-6, ...
       'G', 76.686);
 
  

    %build the dynamical model of the robot
   LBR4p = SerialLink(L, 'name', 'LBR4p', ...
    'manufacturer', 'Kuka', 'comment', 'courtesy of Massimo Cefalo');
   %LBR4pModel.model3d = 'UNIMATE/puma560';
   
   
   %
   % some useful poses
   %
   %assignin('base', 'qz', [-pi/2 pi/2 0 -pi/2 0 pi/2 0]);% ready pose, arm up
   assignin('base', 'qz', [0 pi/2 0 -pi/2 0 pi/2 0]);% only for test 3
   assignin('base', 'qr', [0 0 0 0 0 0 0]); % zero angles, arm is stretched out
   assignin('base', 'qlem', [pi/4 pi/2 0 0 0 0 0]); % starting condition for the lemniscate trajectory (scenario10)
  
   

   clear L
   
end   
