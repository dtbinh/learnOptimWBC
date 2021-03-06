% with this function i check if the time law velocity is all positive or
% not. if it is not positive im not gonna tun the experiment because it
% means that im going back and fort over the desired trajectory

%% this preprocessing works only with AdHocBalanceControllerTrajectory
function [run_flag,performance,action]=CheckTimeLawVelocity(obj,action)
    
    simulator         = obj.input_4_run{1}; % rbt or v-rep
    if(strcmp(simulator,'icub_matlab'))
        controller = obj.input_4_run{4}; % structure that contains every information about the specific instance of the problem
        params = obj.input_4_run{2};
        time    = params.tStart:params.sim_step:params.tEnd;
        value   = zeros(size(time));
        for i=1:length(time)
            value(i) = controller.references.time_law_and_derivatives.sd(time(i),action);
        end
        
        [ind,t0]=Crossing(value);
        
        if(isempty(ind) && prod(value>=0))
            run_flag = true;
            performance = [];
        else
            run_flag = false;
            performance = -1;
        end
    else
        run_flag = false;
        performance = -1;
        disp('this preprocessro is not desgined to work with the rbt simulator for now')
        error('something wrong happened')  
    end
    
    
    
end