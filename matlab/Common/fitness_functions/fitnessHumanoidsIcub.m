function fit  = fitnessHumanoidsIcub(obj,output) 
    
    t = output{1};
    q = output{2};
    
    %%%;;
    downsaple = 10;
    L = 1; 
    max_effort = 4.0000e+07;
    max_traj_error = 2000;
    weight_effort = 1;
    weight_traj_err = 3;
    %%%EOF
    contr = obj.input_4_run{5};
    iCub = contr.GetWholeSystem();
    traj_err= 0;
    
    % i have to uniform the tau with the number of q
    tau_=InterpTorque(contr,obj.input_4_run{4},0.001);
    evaluate_constraints_index = 1;
    for i=1:downsaple:size(t,2)
        q_cur = q(i,:);
        tau_cur = tau_(i,:);
        %compute position of the all control points
       
        ee = WS.offlineFkine(q_cur,'r_gripper');
        p1 = WS.offlineFkine(q_cur,'r_wrist_1');
        p2 = WS.offlineFkine(q_cur,'r_elbow_1');
        p3 = WS.offlineFkine(q_cur,'r_shoulder_1');
        p4 = WS.offlineFkine(q_cur,'head');
        control_points =[ee'; p1'; p2'; p3'; p4'];
        % here i build the input vector to compute the constraints
        % violations
        input_vector = {q_cur(1),q_cur(1),q_cur(2),q_cur(2),q_cur(3),q_cur(3),q_cur(4),q_cur(4),q_cur(5),q_cur(5),q_cur(6),q_cur(6),q_cur(7),q_cur(7),...
                        tau_cur(1),tau_cur(1),tau_cur(2),tau_cur(2),tau_cur(3),tau_cur(3),tau_cur(4),tau_cur(4),tau_cur(5),tau_cur(5),tau_cur(6),tau_cur(6),tau_cur(7),tau_cur(7),...
                        control_points(1,:),control_points(2,:),control_points(3,:),control_points(4,:)};
        
        % here i update the value inside the penalty        
        obj.penalty_handling.EvaluateConstraints(input_vector,evaluate_constraints_index);
        evaluate_constraints_index = evaluate_constraints_index + 1;
        
        % cartesian position error 
        %% (it is of capital importance to specify the end effector task as the first of the first chain in the subchain structure)
        % here GetTraj(1,1,t(i)) mean i take the reference of the first
        % subchain in the first chain.
        %%
        attr_pos = contr.references.GetTraj(1,1,t(i)); 
        traj_err = traj_err + norm((ee - attr_pos),L);
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
