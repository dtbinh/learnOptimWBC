function test = MdlTestBot()
 clear L
   deg = pi/180;
   
  L(1) = Revolute('d', 0, 'a', 1, 'alpha', 0, ...
       'I', [0.13, 0.524, 0.539, 0, 0, 0], ...
       'r', [-0.3638, 0.006, 0.2275], ...
       'm', 17.4, ...  17.4
       'Jm', 0)%, ...
%        'G', 107.815, ...
%        'B', .817e-3, ... .817e-3
%        'Tc', [0.395 -0.435]);

   L(2) = Revolute('d', 0, 'a', 1, 'alpha', 0, ...
       'I', [0.13, 0.524, 0.539, 0, 0, 0], ...
       'r', [-0.3638, 0.006, 0.2275], ...
       'm', 17.4, ...  17.4
       'Jm',0);%, ...
%        'G', 107.815, ...
%        'B', .817e-3, ... .817e-3
%        'Tc', [0.126 -0.071], ...
%        'qlim', [-45 225]*deg );

%     L(3) = Revolute('d', 0, 'a', 0.9, 'alpha', 0, ...
%        'I', [0.13, 0.524, 0.539, 0, 0, 0], ...
%        'r', [-0.3638, 0.006, 0.2275], ...
%        'm', 17.4, ...
%        'Jm', 200e-6, ...
%        'G', 107.815, ...
%        'B', .817e-3, ...
%        'Tc', [0.126 -0.071], ...
%        'qlim', [-45 225]*deg );

  
 T=angvec2tr(-pi/2,[0 1 0]);
 %T(1:3,4) = [0,1,0.8];
    
    
      %build the dynamical model of the robot
   test = SerialLink(L, 'name', 'TestBot', ...
    'manufacturer', 'Unimation', 'ikine', 'puma', 'comment', 'viscous friction; params of 8/95','base',T);

   
 
   
   %
   % some useful poses
   %
   assignin('base', 'qz', [0 pi/4]);% zero angles, L shaped pose
   assignin('base', 'qr', [0 0]);% ready pose, arm up
   assignin('base', 'qs', [0 0]);
   assignin('base', 'qn', [0 0]);
   

   clear L





end