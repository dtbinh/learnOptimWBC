classdef iCub < handle
    
    properties
        %% Structural Parameters
        model_name
        active_floating_base          % switch to control if the icub has or not a floating base
        ndof                          % dependant on the model used for the simulaztion
        %list_of_kin_chain             % string matching URDF name of the link (frame)
        %dim_of_kin_chain
        %access_index;                 % vector of index used for accesing the infromation stored in the structural parameters
        %% Floating base parameter
        % I use this value inside the computation of the dynamical
        % parameters of the robot (i need to udpate them each iteration)
        x_b      %the cartesian position of the base (R^3)
        R_b      %the rotation matrix describing the orientation of the base (global parametrization of SO(3))
        dx_b     %the cartesian velocity of the base (R^3)
        omega_W  %the velocity describing the orientation of the base (SO(3))
        %% Whole body dynamic parameters and state
        dynamic             % M,h,g,H,C_nu,JCoM,dJCoM_nu,Jc,dJc_nu,JH,dJH_nu;
        state               % w_R_b,x_b,qj,dqj,dx_b,w_omega_b       
        %% URDF parameter   (only for urdf model for the IcubGazeboSim model i wil not consider this value)
        jointList           % the list of all the joints in the same order than the urdf
        linkList            % the list of all the links in the same order than the urdf
        revoluteJointList   % the list of all the not fixed joints in the same order than the urdf
        UBjointLimit        % Upper limit boundarie of all the revolute joints
        LBjointLimit        % Lower limit boundarie of all the revolute joints
        effortLimit         % Limit efforts of all the revolute joints
    end
    
    methods
        %% initialization functions
        function obj = iCub(model)
            if(strcmp(model,'icubGazeboSim'))
                obj.model_name = model;
                obj.active_floating_base = true;
                % Initialize the mexWholeBodyModel
                wbm_modelInitialise('icubGazeboSim');
                %obj.list_of_kin_chain = list_of_kin_chain; %{'com','left_arm','right_arm','l_sole','r_sole'}; %string matching URDF name of the link (frame)
                %obj.dim_of_kin_chain  = {3,5,5,6,6};
                %obj.sum_ind = {0,3,8,13,19,25};
                obj.ndof = 25; % degrees of freedom without floating base
            else
                obj.model_name = model;
                obj.active_floating_base = false;
                %obj.list_of_kin_chain =list_of_kin_chain; % {'com','left_arm','right_arm'}; %string matching URDF name of the link (frame)
                model = strcat(model,'.urdf');
                path = which(model);
                wbm_modelInitializeFromURDF(path);
                scheme = xml2struct(path);
                obj.UBjointLimit = [];
                obj.LBjointLimit = [];
                obj.effortLimit = [];
                iii = 1;
                for i = 1:length(scheme.robot.link)
                    if(~strcmp(scheme.robot.link{i}.Attributes.name,'base_link'))
                        obj.linkList{iii} = scheme.robot.link{i}.Attributes.name;
                        iii = iii + 1;
                    end
                end
                iii = 1;
                for i = 1:length(scheme.robot.joint)
                    obj.jointList{i} = scheme.robot.joint{i};
                    if  strcmp(obj.jointList{i}.Attributes.type,'revolute')
                        obj.revoluteJointList{iii} = scheme.robot.joint{i};
                        obj.UBjointLimit = [obj.UBjointLimit, str2double(scheme.robot.joint{i}.limit.Attributes.upper)];
                        obj.LBjointLimit = [obj.LBjointLimit, str2double(scheme.robot.joint{i}.limit.Attributes.lower)];
                        obj.effortLimit = [obj.effortLimit, str2double(scheme.robot.joint{i}.limit.Attributes.effort)];
                        iii = iii +1;
                    end
                end
                obj.ndof = length(obj.revoluteJointList);
            end
        end
        
         % This function initialize and allow to use different limbs of the
        % robot according to the current URDF
        % The possible values of kin_chain are
        % 'trunk','left_arm','right_arm','l_sole','r_sole'
        % return qjInit in degres
        % If no initial joints values are passed through varargin the
        % function automatically set iCub to the default position
        function qjInit = InitializeState(obj, list_of_kin_chain, feet_on_ground, varargin)
            qjInit      = zeros(obj.ndof,1);
            if (~isempty(varargin))
                joints_initial_values  = varargin{1};
                if ~(length(joints_initial_values) == length(list_of_kin_chain))
                    error('joints_initial_values is malformed, should be the same lenght as list_of_kin_chain');
                end
            end
            
            if(~isempty(find(SubStrFind('trunk',list_of_kin_chain),1)))
                if (~isempty(varargin))
                    torsoInit    = joints_initial_values{1,find(SubStrFind('trunk',list_of_kin_chain),1)};
                else
                    torsoInit    = [0.0  0.0  0.0];
                end
                % here the hyp is that i can assign the starting position
                % by following the order specified in the string_search
                % variables than i will apply each value in the right
                % positions through sortJointValue function. the idea is
                % that the joint vector is in the same order of joints in
                % in the xml file
                string_search = {'torso_yaw','torso_roll','torso_pitch'};
                qjInit = obj.sortJointValue(string_search,qjInit,torsoInit);
            end
            
            if(~isempty(find(SubStrFind('left_arm',list_of_kin_chain),1)))
                if (~isempty(varargin))
                    leftArmInit    = joints_initial_values{1,find(SubStrFind('left_arm',list_of_kin_chain),1)};
                else
                    leftArmInit  = [-20.0  30.0  0.0  45.0  0.0 0.0 0.0];%0.0  5.0  0.0  10.0  0.0 0.0 0.0
                end
                string_search = {'l_shoulder_pitch','l_shoulder_roll','l_shoulder_yaw',...
                    'l_elbow','l_wrist_prosup','l_wrist_pitch','l_wrist_yaw'};
                qjInit = obj.sortJointValue(string_search,qjInit,leftArmInit);
            end
            
            if(~isempty(find(SubStrFind('right_arm',list_of_kin_chain),1)))
                if (~isempty(varargin))
                    rightArmInit    = joints_initial_values{1,find(SubStrFind('right_arm',list_of_kin_chain),1)};
                else
                    rightArmInit = [-20.0  30.0  0.0  45.0  0.0 0.0 0.0];
                end
                string_search = {'r_shoulder_pitch','r_shoulder_roll','r_shoulder_yaw',...
                    'r_elbow','r_wrist_prosup','r_wrist_pitch','r_wrist_yaw'};
                qjInit = obj.sortJointValue(string_search,qjInit,rightArmInit);
            end
            
            if(~isempty(find(SubStrFind('l_sole',list_of_kin_chain),1)) || ~isempty(find(SubStrFind('r_sole',list_of_kin_chain),1)))
                if (~isempty(varargin))
                    if(~isempty(find(SubStrFind('l_sole',list_of_kin_chain),1)))
                        leftLegInit    = joints_initial_values{1,find(SubStrFind('l_sole',list_of_kin_chain),1)};
                    end
                    if(~isempty(find(SubStrFind('r_sole',list_of_kin_chain),1)))
                        rightLegInit    = joints_initial_values{1,find(SubStrFind('r_sole',list_of_kin_chain),1)};
                    end
                else
                    if     feet_on_ground(1) == 1 && feet_on_ground(2) == 1
                        % initial conditions for balancing on two feet
                        leftLegInit  = [  25.5   0.1   0.0  -18.5  -5.5  -0.1];
                        rightLegInit = [  25.5   0.1   0.0  -18.5  -5.5  -0.1];
                    elseif   feet_on_ground(1) == 1 && feet_on_ground(2) == 0
                        % initial conditions for the robot standing on the left foot
                        leftLegInit  = [  25.5   15.0   0.0  -18.5  -5.5  -0.1];
                        rightLegInit = [  25.5   5.0    0.0  -40    -5.5  -0.1];
                    elseif   feet_on_ground(1) == 0 && feet_on_ground(2) == 1
                        % initial conditions for the robot standing on the right foot
                        leftLegInit  = [  25.5   5.0    0.0  -40    -5.5  -0.1];
                        rightLegInit = [  25.5   15.0   0.0  -18.5  -5.5  -0.1];
                    end
                end
                string_search = {'l_hip_pitch','l_hip_roll','l_hip_yaw','l_knee',...
                    'l_ankle_pitch','l_ankle_roll'};
                qjInit = obj.sortJointValue(string_search,qjInit,leftLegInit);
                string_search = {'r_hip_pitch','r_hip_roll','r_hip_yaw','r_knee',...
                    'r_ankle_pitch','r_ankle_roll'};
                qjInit = obj.sortJointValue(string_search,qjInit,rightLegInit);
            end
            qjInit      = qjInit.*(pi/180);
        end
        
        %% State function
        function SetWorldFrameiCub(obj,qjInit,dqjInit,dx_bInit,omega_WInit,reference_link)
            % Updating the robot position
            wbm_updateState(qjInit,dqjInit,[dx_bInit;omega_WInit]);
            % fixing the world reference frame w.r.t. the foot on ground position
            [x_b0,R_b0] = wbm_getWorldFrameFromFixLik(reference_link,qjInit);
            % define world frame
            wbm_setWorldFrame(R_b0,x_b0,[0 0 -9.81]');
            % update position and orientation of the floating base repect of the root base
            obj.x_b = x_b0;
            obj.R_b = R_b0;
            % initial velocity floating base
            obj.dx_b   = dx_bInit;
            obj.omega_W = omega_WInit;
        end
        
        %   qj  - joint angles (NumDoF x 1)
        %   xTb - base rototranslation (7 x 1) with 3 for position of frame and 4 for orientation quaternion
        %         (return is already flipped so that quaternion organised as real
        %         followed by imaginary)
        %   dqj - joint velocities (NumDoF x 1)
        %   vxb - floating base velocity (6 x 1)
        function [qj,xTb,qjDot,vb] = GetState(obj)
            [xTb,qj,vb,qjDot]=wbm_getState();
        end
        
        %x_b        position of the floating base
        %qt_b       orientation fo the floating base with quaternion
        %dx_b       linear velocity of the floating base
        %omega_w    angular velocity of the floating base in world frame
        function  SetFloatingBaseState(obj,x_b,qt_b,dx_b,omega_W)
            import WBM.utilities.frame2posRotm; 
            obj.x_b = x_b;
            obj.dx_b = dx_b;
            obj.omega_W = omega_W;
            % Obtaining the rotation matrix from root link to world frame
            qT         = [x_b;qt_b];
            [~,obj.R_b]    = frame2posRotm(qT);
        end
        
        
        %% dynamics functions
        function [M,F,Omega]=WholeBodyDynamics(obj,q,qd)
            M = obj.inertia(q);
            F = wbm_generalizedBiasForces(obj.R_b,obj.x_b,q,qd,[obj.dx_b;obj.omega_W]);
            Omega = obj.CentroidalMomentum(q,qd);
        end
        
        % the hypothesis is that fc is already premultiplied by the Jc (contact jacobian)
        function f = F(obj,q,qd,fc,Jc_t)
            f = wbm_generalisedBiasForces(obj.R_b,obj.x_b,q,qd,[obj.dx_b;obj.omega_W]) -Jc_t*fc;
        end
        %% kinematic functions
        % Same as the method fkine but can be call at anytime. By tag you
        % specify through a string the name of the joint you want
        function  [x,R] = offlineFkine(rob,chi,tag)
        import WBM.utilities.frame2posRotm;    
            x_base  = chi(1:3,:);  %TODO floating base flag required (parameter of the simulator)
            qt_b = chi(4:7,:);  %TODO floating base flag required (parameter of the simulator)
            q   = chi(8:8+rob.ndof-1,:);
            [~,R_base]    = frame2posRotm([x_base;qt_b]);
            fkine = wholeBodyModel('forward-kinematics',reshape(R_base,[],1),x_base,q,tag);
            % Obtaining the rotation matrix from root link to world frame
            [x,R]    = frame2posrot(fkine);
        end
        % Same as the method jacob0 but can be call at anytime. By tag you
        % specify through a string the name of the joint you want
        function  jacob0 = offlineJacob0(rob,chi,tag)
            x_base  = chi(1:3,:);  %TODO floating base flag required (parameter of the simulator)
            qt_b = chi(4:7,:);  %TODO floating base flag required (parameter of the simulator)
            q   = chi(8:8+rob.ndof-1,:);
            [~,R_base]    = frame2posrot([x_base;qt_b]);
            jacob0 = wholeBodyModel('jacobian',reshape(R_base,[],1),x_base,q,tag);
        end
        %% miscellanea
        function suppConvHull = computeSupPoly(obj, feet_on_ground,chi)
        %Compute the support polygone wrt feet_on_ground
            if     feet_on_ground(1) == 1 && feet_on_ground(2) == 1
                %if both feet on the ground the ref frame is l_sole
                %l_foot
                [pos_lfoot,~]    = obj.offlineFkine(chi,'r_sole');
                X__lfoot = pos_lfoot(1);    Y_lfoot = pos_lfoot(2);
                X(1,1) = X__lfoot + 0.12;      Y(1,1) = Y_lfoot + 0.025;
                X(1,2) = X__lfoot + 0.12;      Y(1,2) = Y_lfoot -0.025;
                X(1,3) = X__lfoot - 0.06;     Y(1,3) = Y_lfoot - 0.025;
                X(1,4) = X__lfoot - 0.06;     Y(1,4) = Y_lfoot + 0.025;
                %r_foot
                [pos_rfoot,~]    = obj.offlineFkine(chi,'l_sole');
                X__rfoot = pos_rfoot(1);    Y_rfoot = pos_rfoot(2);
                X(1,5) = X__rfoot + 0.12;     Y(1,5) = Y_rfoot + 0.025;
                X(1,6) = X__rfoot + 0.12;     Y(1,6) = Y_rfoot - 0.025;
                X(1,7) = X__rfoot - 0.06;     Y(1,7) = Y_rfoot - 0.025;
                X(1,8) = X__rfoot - 0.06;     Y(1,8) = Y_rfoot + 0.025;
            end
            if     feet_on_ground(1) == 0 || feet_on_ground(2) == 0
                %if only  left foot is on the ground the ref frame is l_sole
                %if only right foot is on the ground the ref frame is r_sole
                X(1,1) = 0.12;      Y(1,1) = 0.025;
                X(1,2) = 0.12;      Y(1,2) = -0.025;
                X(1,3) = -0.06;     Y(1,3) = -0.025;
                X(1,4) = -0.06;     Y(1,4) = 0.025;
            end
            suppConvHull = ConvexHull(X,Y);
        end
        % Create the constraints_values vector need to compute the constraints
        % Used in AllRUntimeParameters
        function vector = createConstraintsVector(obj)
            vector = [];
            for i = 1:obj.ndof
                vector = [vector, obj.UBjointLimit(i), obj.LBjointLimit(i)];
            end
            for i = 1:obj.ndof
                vector = [vector, obj.effortLimit(i), -obj.effortLimit(i)];
            end
        end
    end
end
