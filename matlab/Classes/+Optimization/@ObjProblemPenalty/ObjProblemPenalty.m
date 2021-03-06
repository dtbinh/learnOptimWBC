%% this class is an implementation of constraints computation for ipopt and fmincon
%% 


% the idea is that we check the consraints inside the fitness function and
% than we update the information inside the object smetimes direcrtly 


classdef  ObjProblemPenalty < Optimization.AbstractPenalty
    
   properties
       pop_size              % number of candidates for each generations (NOT USED)
       n_constraint          % number of constraints to handle
       penalties             % matrix of penalties each column is a constraints each row is a candidate (NOT USED)
       fitness_penalties     % value to add to the fintess function of each candidates
       constraints_functions % vector of functions handle for computing the constraints (actually a string vector that need str2func conversion to get the handles)
       constraints_type      % vector that specifies if the constraints is a equality or an inequality
       constraints_values    % vector that contains some constants that are used by the function in constraints_functions to compute the constraints_violation
       constraints_violation % amount of violations at the end of the rollout for the current candidate. it is a matrix where on the column we have the sampled violations and on the row we have the constraints
   end
       
   methods
       
       function obj = ObjProblemPenalty(search_space_dimension,constraints_functions,constraints_type,constraints_values)
           obj.pop_size = round(4 + 3 * log(search_space_dimension)); % this choice is the same used in CMAES when lambda is not spcified
           obj.n_constraint = length(constraints_functions);
           obj.constraints_functions = constraints_functions;
           obj.constraints_type = constraints_type;
           obj.constraints_values = constraints_values;
           obj.constraints_violation = zeros(obj.n_constraint,1);
           obj.penalties = zeros(obj.pop_size,obj.n_constraint);
           obj.fitness_penalties = zeros(1,obj.pop_size);
       end
       
       % To call in Fitness
       function EvaluateConstraints(obj,input,iteration)
           % input is a column vector of value that we can use to compute the violation of the constraints 
           for i=1:length(input)
                obj.constraints_violation(i,iteration) = feval(obj.constraints_functions{1,i},input{1,i},obj.constraints_values(i));
           end     
       end
       % to call in ComputeConstraintsViolation and EvaluateCmaes
       function ComputePenalties(obj,c_index)
          obj.fitness_penalties(c_index) = sum(obj.penalties(c_index,:).^2);
       end
       % To call in EvaluateCmaes
       % in this function i perform further elaborations with the
       % constraints violations. 
       % with c_index = is not used anymore and i will put -1 only for compatibility with the other functions 
       function ComputeConstraintsViolation(obj,c_index)
           % here i check if i im considering a set of candidate
           for i=1:obj.n_constraint
               % i sum only the constraints violation it means that i have to discard value less then zero 
               % in this part i consider only the violation on each constraint for the overall experiments
               index = obj.constraints_violation(i,:)>0;
               obj.penalties(1,i) = sum(obj.constraints_violation(i,index),2); 
               if(isempty(obj.penalties(1,i)))
                   obj.penalties(1,i) = 0;   
               end
           end
           %c_index = 1;
           %obj.ComputePenalties(c_index);
       end  
       % to call in CMAES (NOT USED)
       % in this case im not using cur_index
       function [new_costs, new_performances] = FitnessWithPenalty(obj,policyId,old_costs,old_performances,cur_index)
           % for the performance because im considering negative value i have to subtract the penalties  
           new_performances = old_performances - obj.fitness_penalties';
           % for the cost i have to add the penalties in order to obtain
           % the corrected cost
           new_costs = old_costs;
           new_costs(1,policyId - obj.pop_size : policyId - 1) = old_costs(1,policyId - obj.pop_size : policyId - 1) + obj.fitness_penalties;  
       end
   end
end
