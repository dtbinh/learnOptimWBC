function jacob0 = jacob0(rob,q,tag)
%% JACOB0 - Jacobian with respect to the base coordinate frame of the LBR4p copy arm. 
% ========================================================================= 
%    
%    J0 = jacob0(rob,q) 
%    J0 = rob.jacob0(q) 
%    
%  Description:: 
%    Given a full set of joint variables the function 
%    computes the robot jacobian with respect to the base frame. 
%    
%  Input:: 
%    q:  n-element vector of generalized coordinates. 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    J0:  [6xn] Jacobian matrix 
jacob0 = wholeBodyModel('jacobian',reshape(rob.R_b,[],1),rob.x_b,q,tag);
%wbm_jacobian(rob.R_b,rob.x_b,q,rob.kinematic_chain_selector[rob.cur_chain]);
