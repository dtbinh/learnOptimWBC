function fit  = fitnessHumanoidsIcubSquat(obj,output)
% fitness function of the squating experience
% Work In Progress
    
    t = output{1};
    q = output{2};
    
    %%%;;
    downsaple = 10;
    L = 1; 
    max_effort = 3.5000e+05;
    max_traj_error = 250;
    weight_effort = 1;
    weight_traj_err = 3;
    %%%EOF
    contr = obj.input_4_run{4};
    iCub = contr.GetWholeSystem();
    traj_err= 0;
    
    % i have to uniform the tau with the number of q
    tau_=InterpTorque(contr,obj.input_4_run{3},0.001);
    evaluate_constraints_index = 1;
    for i=1:downsaple:size(t,1)
        q_cur = q(i,:);
        tau_cur = tau_(i,:);
        %compute position of the all control points
       
        ee_r = iCub.offlineFkine(q_cur','r_gripper');
        p1 = iCub.offlineFkine(q_cur','r_wrist_1');
        p2 = iCub.offlineFkine(q_cur','r_elbow_1');
        p3 = iCub.offlineFkine(q_cur','r_shoulder_1');
        p4 = iCub.offlineFkine(q_cur','head');
        ee_l = iCub.offlineFkine(q_cur','l_gripper');
        p5 = iCub.offlineFkine(q_cur','l_wrist_1');
        p6 = iCub.offlineFkine(q_cur','l_elbow_1');
        p7 = iCub.offlineFkine(q_cur','l_shoulder_1');
        control_points = [ee_r'; p1'; p2'; p3'; p4'; ee_l'; p5'; p6'; p7'];
        % here i build the input vector to compute the constraints
        % violations
        input_vector = {q_cur(8),q_cur(8),q_cur(9),q_cur(9),q_cur(10),q_cur(10),q_cur(11),q_cur(11),q_cur(12),q_cur(12),q_cur(13),q_cur(13),q_cur(14),q_cur(14),...
                        q_cur(15),q_cur(15),q_cur(16),q_cur(16),q_cur(17),q_cur(17),q_cur(18),q_cur(18),q_cur(19),q_cur(19),q_cur(20),q_cur(20),q_cur(21),q_cur(21),...
                        q_cur(22),q_cur(22),q_cur(23),q_cur(23),q_cur(24),q_cur(24),q_cur(25),q_cur(25),q_cur(26),q_cur(26),q_cur(27),q_cur(27),q_cur(28),q_cur(28),...
                        q_cur(29),q_cur(29),q_cur(30),q_cur(30),q_cur(31),q_cur(31),q_cur(32),q_cur(32),q_cur(33),q_cur(33),q_cur(34),q_cur(34),q_cur(35),q_cur(35),...
                        q_cur(36),q_cur(36),q_cur(37),q_cur(37),q_cur(38),q_cur(38),q_cur(39),q_cur(39),...
                        tau_cur(1),tau_cur(1),tau_cur(2),tau_cur(2),tau_cur(3),tau_cur(3),tau_cur(4),tau_cur(4),tau_cur(5),tau_cur(5),tau_cur(6),tau_cur(6),tau_cur(7),tau_cur(7),...
                        tau_cur(8),tau_cur(8),tau_cur(9),tau_cur(9),tau_cur(10),tau_cur(10),tau_cur(11),tau_cur(11),tau_cur(12),tau_cur(12),tau_cur(13),tau_cur(13),tau_cur(14),tau_cur(14),...
                        tau_cur(15),tau_cur(15),tau_cur(16),tau_cur(16),tau_cur(17),tau_cur(17),tau_cur(18),tau_cur(18),tau_cur(19),tau_cur(19),tau_cur(20),tau_cur(20),...
                        tau_cur(21),tau_cur(21),tau_cur(22),tau_cur(22),tau_cur(23),tau_cur(23),tau_cur(24),tau_cur(24),tau_cur(25),tau_cur(25),tau_cur(26),tau_cur(26),...
                        tau_cur(27),tau_cur(27),tau_cur(28),tau_cur(28),tau_cur(29),tau_cur(29),tau_cur(30),tau_cur(30),tau_cur(31),tau_cur(31),tau_cur(32),tau_cur(32),...
                        control_points(1,:),control_points(2,:),control_points(3,:),control_points(4,:),control_points(5,:), ...
                        control_points(6,:),control_points(7,:),control_points(8,:),control_points(9,:)};            

        % here i update the value inside the penalty        
        obj.penalty_handling.EvaluateConstraints(input_vector,evaluate_constraints_index);
        evaluate_constraints_index = evaluate_constraints_index + 1;
        
        % cartesian position error 
        %% (it is of capital importance to specify the end effector task as the first of the first chain in the subchain structure)
        % here GetTraj(1,1,t(i)) mean i take the reference of the first
        % subchain in the first chain.
        %%
        traj_err = 0;
    end 
    % max effort
    effort = sum((contr.torques(:).*contr.torques(:)),2);
    effort = sum(effort,1);
    % saturations 
    if(effort>max_effort)
       effort = max_effort;
    end
    
    if(traj_err>max_traj_error)
       traj_err = max_traj_error;
    end
    
    traj_err  = traj_err/max_traj_error;
    effort = effort/max_effort;
    %%DEBUG
    fprintf('traj error is %f\n', traj_err)
    fprintf('effort term is %f\n', effort)
    %---
    fit = (-traj_err*(weight_traj_err) - effort*(weight_effort))*( 1/(weight_traj_err+weight_effort) );
end
