close all
clear variables
clc

deg = pi/180;

%% only for debug of the remote api library
% if libisloaded('remoteApi')
%    unloadlibrary remoteApi
% end
%% 
op_selection = 'control';
control = 'torque_control';
% GENERAL PARAM 

time_struct.ti = 0;
time_struct.tf = 10;
time_struct.step = 0.001;

%SUBCHAIN PARAMETERS 
subchain1 = [7];
target_link{1} = subchain1;

% matlab model
[bot] = MdlLBR4pSimple();

% vrep model
v = VAREP('~');
v_arm = VAREP_arm(v,'LBR4p','fmt','%s_joint%d');

%desired_pose pointer
%des_pos = v.object('cur_pos');
% current pose tip robot
%ee_cur_pos = v.object('toolVis');

%% set the first joint position and target velocity 
q_start = qz;
qd_start = zeros(size(q_start));
v_arm.setq(q_start)
v_arm.SetTargetQd(qd_start);

% this is usefull to check the geometric correspondance
%between vrep and matlab
%% test of the dynamic control cycle (position and velocity)
% activate servo controllers on the vrep robot!


switch op_selection
   
   case 'teach'
      % this is usefull to check the geometric correspondance
      %between vrep and matlab
      bot.teach();
      v_arm.teach(); 
   case 'check_scene'
   
      time_struct_draw.ti = 0;
      time_struct_draw.tf = 10;
      time_struct_draw.step = 0.1;
      name_traj = 'circle';

      allpath=which('find_traj.m');
      path=fileparts(allpath);
      path = strcat(path,'/',name_traj,'.csv');
      fileID = fopen(path,'w');

      p_disp = [];
      for i = time_struct_draw.ti:time_struct_draw.step:time_struct_draw.tf

         [p,pd,pdd]=reference.GetTraj(1,1,i);
         p_disp=[p_disp;p'];
         fprintf(fileID,'%d,%d,%d\n',p(1),p(2),p(3));
      end
      fclose(fileID);
      hold on;
      bot.teach(); 
      plot3(p_disp(:,1),p_disp(:,2),p_disp(:,3));
   case 'test_integration_joint_path' 
      
      % starting desired position
      [p,pd,pdd]=reference.GetTraj(1,1,0);    
      fixed_orientation = eye(3);
      T = eye(4);
      T(1:3,1:3) = fixed_orientation;
      T(1:3,4) = KinovaVrepGlobalCoordinateCorrection(p);
      q_des = bot.ikunc(T)';

      % starting desired velocity
      qd_des = qd_start';
      lambda = 0;
      all_position =[];
      all_joint_position=[];
      for time = time_struct.ti:time_struct.step:time_struct.tf % integration step

        [p,pd,pdd]=reference.GetTraj(1,1,time);
        all_position = [all_position p];
         % inversion with jacobian
         J = bot.jacob0(q_des,'trans');
         J_damp = J'/(J*J' + eye(3)*lambda);
         qd_des = J_damp*pd;

         % euler integration of velocity(ode1)
         q_des = q_des + qd_des*time_struct.step;
         all_joint_position = [all_joint_position q_des];
        time
      end

      disp('start visualization! --------------- ')
      vis_step = 10;
      % visualization step
      for index = 1:vis_step:length(all_joint_position)% integration step       
         q_dh = all_joint_position(:,index)
         % joint corrections
         q_dh = KinovaVrepKinematicCorrection(q_dh) 
         v_arm.setq(q_dh);
         des_pos.setpos(all_position(:,index)')
      end
   case 'control'
      % i use the same integration step of vrep
      if(v.syncronous)
         time_struct.step = v.GetSimDelta();
      end
      
      switch control
      
         case 'ff_regulation'
            %% open loop regulation
            q_goal = [pi/2,pi/2,0,-pi/2,0,0,0];
            v_arm.SetTargetQ(q_goal);
            
            v.simstart();
            Kp = 50; 
            for i = time_struct.ti:time_struct.step:time_struct.tf
               
               q_cur = v_arm.getq();
               q_e = Kp*(q_goal - q_cur);
               
               
               if(v.syncronous)
                  v.SendTriggerSync()
               end
               
            end
            
             v.simstop();

         case 'ff_tracking_pos'
            %%   open loop tracking (only joints reference)  inverse kinematics 
            % i define the orientation for the inverse kinematic 
            fixed_orientation = roty(90);
            T = eye(4);
            T(1:3,1:3) = fixed_orientation;
            
           
            % start simulation
            v.simstart();
            q = q_start';
           
            for i = time_struct.ti:time_struct.step:time_struct.tf
      
               %t = v.GetSimTime();
               [p,pd,pdd]=reference.GetTraj(1,1,t);
               des_pos.setpos(p');
               T(1:3,4) = p;

               % inversione cinematica
               q = bot.ikunc(T);

               v_arm.SetTargetQ(q);
               

               if(v.syncronous)
                  v.SendTriggerSync()
               end

               
            
            end
      
      
         v.simstop()
      case 'tracking_velocity'
         lambda = 0.001;
         K_p = 50;
         % initialize
         T = ee_cur_pos.getpose();
         p_mes = T(1:3,4);
         q_mes =  v_arm.getq()';
         v.simstart();
         for i = time_struct.ti:time_struct.step:time_struct.tf
            
             t = v.GetSimTime();
             [p_des,pd_des,pdd]=reference.GetTraj(1,1,t);
             des_pos.setpos(p_des'); % for positioning one object to show trajectory

             % inversion with jacobian
             J = bot.jacob0(q_mes,'trans');
             J_damp = J'/(J*J' + eye(3)*lambda);
             qd_contr = J_damp*(K_p*((p_des)-(p_mes)) + pd_des)
            
             error = p_des-p_mes
             
             v_arm.SetTargetQd(qd_contr);
            
             if(v.syncronous)
               v.SendTriggerSync()
             end
             
             % update p and q
             T = ee_cur_pos.getpose();
             p_mes = T(1:3,4);
             q_mes =  v_arm.getq()';
               
         end
         
      v.simstop();
            
      case 'torque_control' % in the vrep model yuo have to remove the low level control loop (pid or spring-damper)
         
         forcesensor = VAREP_forcesens(v,'Fc');
         robots{1} = bot;
         chains = SubChains(target_link,robots);
         
         % repellers parameters
         repellers = [];
         
         %% primary task
%          traj_type = {'cartesian'};
%          control_type = {'x'};
%          type_of_traj = {'func'};
%          geometric_path = {'fixed'};
%          time_law = {'none'};
%          %parameters first chains
%          geom_parameters{1,1} = [0.30 -0.75 0.5]; % regulation
%          dim_of_task{1,1}={[1;1;1]};
               
         traj_type = {'cartesian'};
         control_type = {'x'};
         type_of_traj = {'func'};
         geometric_path = {'circular'};
         time_law = {'linear'};
         %parameters first chains
         geom_parameters{1,1} = [0.2 pi/2 pi/2 0 0.0 -0.75 0.5]; % regulation
         dim_of_task{1,1}={[1;1;1]};
         

%          traj_type = {'cartesian'};
%          control_type = {'rpy'};
%          type_of_traj = {'func'};
%          geometric_path = {'fixed'};
%          time_law = {'none'};
%          %parameters first chains
%          geom_parameters{1,1} = [pi/2 0 -pi/2]; % regulation
%          dim_of_task{1,1}={[1;1;1]};

         %% secondary task
%          traj_type_sec = {'cartesian'};
%          control_type_sec = {'x'};
%          type_of_traj_sec = {'func'};
%          geometric_path_sec = {'fixed'};
%          time_law_sec = {'linear'};
%          %parameters first chains
%          geom_parameters_sec{1,1} = [0.30 -0.71 0.5]; % regulation
%          dim_of_task_sec{1,1}={[1;1;1]};
         
         traj_type_sec = {'none'};
         control_type_sec = {'rpy'};
         type_of_traj_sec = {'func'};
         geometric_path_sec = {'fixed'};
         time_law_sec = {'none'};
         %parameters first chains
         geom_parameters_sec{1,1} = [pi/2 0 -pi/2]; % regulation
         dim_of_task_sec{1,1}={[1;1;1]};

         % traj_type = {'cartesian_x'};
         % control_type = {'impedance'};
         % type_of_traj = {'func'};
         % geometric_path = {'rectilinear'}
         % time_law = {'none'};
         % %parameters first chains
         % geom_parameters{1,1} = [0.50 -0.76 1 -0.50 -0.76 1]; % regulation
         % dim_of_task{1,1}={[1;1;1]}

         % if type_of_task = sampled i have to specify the Time to reach the
         % end of the trajectories that is equal to the simulation time
         reference = References(target_link,traj_type,control_type,geometric_path,geom_parameters,time_law,time_struct,dim_of_task,type_of_traj);
         reference.BuildTrajs();

         secondary_refs = References(target_link,traj_type_sec,control_type_sec,geometric_path_sec,geom_parameters_sec,time_law_sec,time_struct,dim_of_task_sec,type_of_traj_sec);
         secondary_refs.BuildTrajs();

         
         
         %CONTROLLER PARAMETERS 1
         % the metric change between regularized and not regularized because in the
         % regularized case i have to do N^(-1) 
         % not regularized case i have N^(-1/2)
         metric = {'M^(1)'};  % ex: if N = M^(-1) so N^(-1/2) = (M^(-1))^(-1/2) = M^(1/2);        

         % primary task gain
         kd = 110;
         kp = 70; % row vector one for each chain
         
         for i= 1:chains.GetNumChains()
            for par = 1:chains.GetNumTasks(i)
                if(strcmp(traj_type{i},'impedance'))
                    M = diag([1 1 1]);
                    D = diag([1 10 1]);
                    P =  kp(i,par)*eye(size(dim_of_task{i,par},1));
                    obj.M = M;
                    obj.D = D;
                    obj.P = P;
                    Param{i,par} = obj;
                else
                    K_p = kp(i,par)*eye(size(dim_of_task{i,par},1));  
                    K_d = kd(i,par)*eye(size(dim_of_task{i,par},1)); 
                    obj.Kp = K_p;
                    obj.Kd = K_d;
                    Param{i,par} = obj;
                end
            end

         end
         % secondary task gains
         kd = 110;
         kp = 70; % row vector one for each chain
         
         for i= 1:chains.GetNumChains()
            for par = 1:chains.GetNumTasks(i)
                 if(strcmp(traj_type_sec{i},'impedance'))
                    M = diag([1 1 1]);
                    D = diag([1 10 1]);
                    P =  kp(i,par)*eye(size(dim_of_task{i,par},1));
                    obj.M = M;
                    obj.D = D;
                    obj.P = P;
                    Param_secondary{i,par} = obj;
                else
                    K_p = kp(i,par)*eye(size(dim_of_task{i,par},1));  
                    K_d = kd(i,par)*eye(size(dim_of_task{i,par},1)); 
                    obj.Kp = K_p;
                    obj.Kd = K_d;
                    Param_secondary{i,par} = obj;
                end
            end
         end
        
         value1 = 1*ones(chains.GetNumTasks(1));
         values{1} = value1;
         value_range = [];
         
         %kkp = 600;
         %Md = diag([1 1 1]);
         %Dd = diag([1 1 1]);
         %Pd = diag(kkp*[1 1 1]);
       


         %CONTROLLER PARAMETERS 2
         combine_rule = {'sum'}; % sum or projector (with sum reppelers are removed)
         % with this term i introduce a damped least square structure inside my
         % controller if regularizer is 0 i remove the regularizer action 
         % ONE FOR EACH TASK
         regularizer_chain_1 = [0 0.001 0.001]; 
         regularized_chain_2 = [1];
         regularizer{1} = regularizer_chain_1;
         regularizer{2} = regularized_chain_2;
         
         
         if(strcmp(combine_rule,'sum'))
            number_of_action = chains.GetNumTasks(1);
         elseif(strcmp(combine_rule,'projector'))
            number_of_action = chains.GetNumTasks(1) + repellers.GetNumberOfWeightFuncRep(1);
         end
        
         alphas = Alpha.ConstantAlpha.BuildCellArray(chains.GetNumChains(),chains.GetNumTasks(1),values,value_range,time_struct); 
         controller = Controllers.UF(chains,reference,secondary_refs,alphas,repellers,metric,Param,Param_secondary,combine_rule,regularizer);
         
         q = q_start ;
         qd = qd_start;
         all_tau = [];
         controller.SetCurRobotIndex(1);
         v.simstart();
         if(v.syncronous)
            v.SendTriggerSync()
         end
          t=0;
          for i = time_struct.ti:time_struct.step:time_struct.tf
             [p,pd,pdd]=reference.GetTraj(1,1,t);
             % object that show the desired position 
             %des_pos.setpos(p');
             %Fc2 =  forcesensor.readforces();
             %Fc = forcesensor.readforces(false);
             Fc = zeros(6,1);
             Jc = chains.sub_chains{1}.jacob0(q,'rpy');
             Jc_t = Jc';
             tau_control = controller.Policy(t,q,qd,Fc,Jc_t);
             %tau = tau*10^(-3);
             v_arm.SetTau(tau_control)
             if(v.syncronous)
                  v.SendTriggerSync()
             end
             t = t + time_struct.step;
             q = v_arm.getq();
             qd = v_arm.GetQd();
             all_tau = [all_tau;tau_control'];
          end
         v.simstop();
%          qi{1} = q;
%          qdi{1} = qd;
%          fps = 200;
%          fixed_step =  true;
%          time_struct.step = 0.001;
%          [t, q, qd] = DynSim(time_struct,controller,qi,qdi,fixed_step);
%          bot.plot(q{1},'fps',fps);
%      
         
     case 'test_torque'
         v.simstart();
          tau = [80 , 0 , 0 , 0 , 0, 0, 0]
          for i = time_struct.ti:time_struct.step:time_struct.tf
             v_arm.SetTau(tau);
             if(v.syncronous)
                  v.SendTriggerSync()
             end
             q = v_arm.getq(); 
             qd = v_arm.GetQd();
          end
         v.simstop();   
      end
end



%% old fb tracking_vel

%             case 'fb_tracking_vel_joint' % in the vrep model yuo have to remove the low level control loop (pid or spring-damper)
%             
%              v.simstart();
%              q_meas= q_start';
%              qd_cur = qd_start';
%              lambda = 0.01;
%              Kp = 2;
%              Ki = 0.1;
%              % intial position attached to the trajectory
%              [p,pd,pdd]=reference.GetTraj(1,1,0);
%              fixed_orientation = eye(3);
%              T = eye(4);
%              T(1:3,1:3) = fixed_orientation;
%              T(1:3,4) = KinovaVrepGlobalCoordinateCorrection(p);
%              q_des = bot.ikunc(T)';
%              e_int = 0;
%               all_joint_position=[];
%              for i = time_struct.ti:time_struct.step:time_struct.tf
%                 
%                 % reference in cartesian
%                 t = v.GetSimTime();
%                 [p,pd,pdd]=reference.GetTraj(1,1,t);
%                 des_pos.setpos(p'); % for positioning one object to show trajectory
%                 
%                 % inversion with jacobian
%                 J = bot.jacob0(q_des,'trans');
%                 J_damp = J'/(J*J' + eye(3)*lambda);
%                 qd_des = J_damp*pd;
%                 
%                 % euler integration of velocity(ode1)
%                 q_des = q_des + qd_des*time_struct.step;
%                 all_joint_position = [all_joint_position q_des];
%                 q_des_jaco_vrep = KinovaVrepKinematicCorrection(q_des);
%                 position_error = q_des_jaco_vrep - q_meas;
%                 
%                 e_int = e_int + (q_des_jaco_vrep - q_meas)*time_struct.step;
%                 control = Kp*(q_des_jaco_vrep - q_meas) + Ki*(e_int) + qd_des;
%                 
%                 v_arm.SetTargetQd(control);
%                 
%                 if(v.syncronous)
%                   v.SendTriggerSync()
%                 end
%                 % update q and qd
%                q_meas = v_arm.getq()';   
%              end
%             
%             v.simstop();



