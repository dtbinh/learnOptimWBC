%%%;;


%% comment
%this file describe a test task for the elastic reference
%
%
%% TYPE OF CONTROLLER 
CONTROLLERTYPE ='UF';   % GHC or UF
%%

%SUBCHAIN PARAMETERS 
subchain1 = [7 7 7 7];
target_link{1} = subchain1;


%% Robot
[bot1] = MdlLBR4p();
robots{1} = bot1;
chains = SubChains(target_link,robots);
%%

% REFERENCE PARAMETERS
traj_type = {'cartesian_x','cartesian_x','cartesian_x','joint'};
control_type = {'tracking','regulation','regulation','regulation'};
type_of_traj = {'func','none','none','none'};
geometric_path = {'circular','none','none','none'};
time_law = {'linear','none','none','none'};
%parameters first chains
geom_parameters{1,1} = [0.3 pi/2 -pi/2 0 0 -0.5 0.5];
geom_parameters{1,2} = [-0.03 -0.5 0.05]; 
geom_parameters{1,3} = [-0.4 -0.5 0.7];
geom_parameters{1,4} = [0 0 0 0 0 0 0];
dim_of_task{1,1}=[1;1;1]; dim_of_task{1,2}= [1;1;1]; dim_of_task{1,3}= [1;1;1]; dim_of_task{1,4}=ones(bot1.n,1);

%% FROM THIS POINT YOU CAN FIND PARAMETERS IN THE STATIC PARAMETERS FILE RELATED TO EACH ALGORITHM 

%%%EOF%%%;;

% REPELLER PARAMETERS
% scenario dependant
rep_subchain = [7];
rep_target_link{1} = rep_subchain;
rep_type = {'cartesian_x'};
rep_mask {1,1}=[1,1,1]; 
rep_type_of_J_rep = {'DirectionCartesian'};
for ii=1:chains.GetNumChains()
    chain_dof(ii) = chains.GetNumLinks(ii);
end



%CONTROLLER PARAMETERS
% the metric change between regularized and not regularized because in the
% regularized case i have to do N^(-1) 
% not regularized case i have N^(-1/2)
metric = {'M','M','M','M'};  % ex: if N = M^(-1) so N^(-1/2) = (M^(-1))^(-1/2) = M^(1/2);        


kp = [700,700,700,700]; % row vector one for each chain
kd = [2*sqrt(kp),2*sqrt(kp),2*sqrt(kp),2*sqrt(kp)];

for i= 1:chains.GetNumChains()
   for par = 1:chains.GetNumTasks(i)
       K_p = kp(i,par)*eye(size(dim_of_task{i,par},1));  
       K_d = kd(i,par)*eye(size(dim_of_task{i,par},1)); 
       Kp{i,par} = K_p;
       Kd{i,par} = K_d;
   end
   
end



%%%EOF