%#TODO set control of input plus error signaling
% I control the normalization of time inside the time law (linear circular and trapezoid)

function SetTraj(obj,ind_subchain,ind_task)

  if(strcmp(obj.type{ind_subchain,ind_task},'joint'))
      if(strcmp(obj.control_type{ind_subchain,ind_task},'tracking'))
        %write regulation block 
      elseif(strcmp(obj.control_type{ind_subchain,ind_task},'regulation'))
         [p,pd,pdd,t]=Fixedpoint(obj.geom_parameters{ind_subchain,ind_task});
         obj.trajectories{ind_subchain,ind_task}.p = p;
         obj.trajectories{ind_subchain,ind_task}.pd = pd;
         obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
         obj.trajectories{ind_subchain,ind_task}.time = t;    
      end 
  elseif(strcmp(obj.type{ind_subchain,ind_task},'cartesian_x'))
  
      if(strcmp(obj.control_type{ind_subchain,ind_task},'tracking'))
       
          if(strcmp(obj.traj{ind_subchain,ind_task},'rectilinear'))
              s = 0;
              if(strcmp(obj.time_law{ind_subchain,ind_task},'exponential'))
                  s=Exponential(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'linear'))
                  s=Linear(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'trapezoidal'))
                  %s=Trapezoidal(obj.time_parameters);
              end
              
              [p,pd,pdd,t] = Rectilinear(s,obj.time_struct,obj.geom_parameters{ind_subchain,ind_task},obj.type_of_traj{ind_subchain,ind_task});
              obj.trajectories{ind_subchain,ind_task}.p = p;
              obj.trajectories{ind_subchain,ind_task}.pd = pd;
              obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
              obj.trajectories{ind_subchain,ind_task}.time = t;
              
          elseif(strcmp(obj.traj{ind_subchain,ind_task},'lemniscate')) 
              s = 0;
              if(strcmp(obj.time_law{ind_subchain,ind_task},'exponential'))
                  s=Exponential(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'linear'))
                  s=Linear(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'trapezoidal'))
                  %s=Trapezoidal(obj.time_parameters);
              end
            
              [p,pd,pdd,t] = Lemniscate(s,obj.time_struct,obj.geom_parameters{ind_subchain,ind_task},obj.type_of_traj{ind_subchain,ind_task});
              obj.trajectories{ind_subchain,ind_task}.p = p;
              obj.trajectories{ind_subchain,ind_task}.pd = pd;
              obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
              obj.trajectories{ind_subchain,ind_task}.time = t;    
              
          elseif(strcmp(obj.traj{ind_subchain,ind_task},'circular')) 
              s = 0;
              if(strcmp(obj.time_law{ind_subchain,ind_task},'exponential'))
                  s=Exponential(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'linear'))
                  s=Linear(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'trapezoidal'))
                  %s=Trapezoidal(obj.time_parameters);
              end
            
              [p,pd,pdd,t] = Circular(s,obj.time_struct,obj.geom_parameters{ind_subchain,ind_task},obj.type_of_traj{ind_subchain,ind_task});
              obj.trajectories{ind_subchain,ind_task}.p = p;
              obj.trajectories{ind_subchain,ind_task}.pd = pd;
              obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
              obj.trajectories{ind_subchain,ind_task}.time = t;
          elseif(strcmp(obj.traj{ind_subchain,ind_task},'elastic')) 
              s = 0;
              if(strcmp(obj.time_law{ind_subchain,ind_task},'exponential'))
                  s=Exponential(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'linear'))
                  s=Linear(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'trapezoidal'))
                  %s=Trapezoidal(obj.time_parameters);
              end
            
              [p,pd,pdd,t] = ElasticReference(s,obj.time_struct,obj.geom_parameters{ind_subchain,ind_task},obj.type_of_traj{ind_subchain,ind_task});
              obj.trajectories{ind_subchain,ind_task}.p = p;
              obj.trajectories{ind_subchain,ind_task}.pd = pd;
              obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
              obj.trajectories{ind_subchain,ind_task}.time = t;   
             
              % number of basis x number of euclidean dimensions
              obj.parameter_dim{ind_subchain,ind_task} = obj.geom_parameters{ind_subchain,ind_task}(1)*3;
          end 
          
      elseif(strcmp(obj.control_type{ind_subchain,ind_task},'regulation'))
         [p,pd,pdd,t]=Fixedpoint(obj.geom_parameters{ind_subchain,ind_task});
         obj.trajectories{ind_subchain,ind_task}.p = p;
         obj.trajectories{ind_subchain,ind_task}.pd = pd;
         obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
         obj.trajectories{ind_subchain,ind_task}.time = t;    
      end 

  elseif(strcmp(obj.type{ind_subchain,ind_task},'cartesian_rpy'))  
      
      if(strcmp(obj.control_type{ind_subchain,ind_task},'tracking'))
       
          if(strcmp(obj.traj{ind_subchain,ind_task},'rectilinear'))
              s = 0;
              if(strcmp(obj.time_law{ind_subchain,ind_task},'exponential'))
                  s=Exponential(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'linear'))
                  s=Linear(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'trapezoidal'))
                  %s=Trapezoidal(obj.time_parameters);
              end
              
              [p,pd,pdd,t] = Rectilinear(s,obj.time_struct,obj.geom_parameters{ind_subchain,ind_task},obj.type_of_traj{ind_subchain,ind_task});
              obj.trajectories{ind_subchain,ind_task}.p = p;
              obj.trajectories{ind_subchain,ind_task}.pd = pd;
              obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
              obj.trajectories{ind_subchain,ind_task}.time = t;
              
              
          elseif(strcmp(obj.traj{ind_subchain,ind_task},'circular')) 
              s = 0;
              if(strcmp(obj.time_law{ind_subchain,ind_task},'exponential'))
                  s=Exponential(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'linear'))
                  s=Linear(obj.time_struct.tf);
              elseif(strcmp(obj.time_law{ind_subchain,ind_task},'trapezoidal'))
                  %s=Trapezoidal(obj.time_parameters);
              end
            
              [p,pd,pdd,t] = Circular(s,obj.time_struct,obj.geom_parameters{ind_subchain,ind_task},obj.type_of_traj{ind_subchain,ind_task});
              obj.trajectories{ind_subchain,ind_task}.p = p;
              obj.trajectories{ind_subchain,ind_task}.pd = pd;
              obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
              obj.trajectories{ind_subchain,ind_task}.time = t;
          end 
          
      elseif(strcmp(obj.control_type{ind_subchain,ind_task},'regulation'))
         [p,pd,pdd,t]=Fixedpoint(obj.geom_parameters{ind_subchain,ind_task});
         obj.trajectories{ind_subchain,ind_task}.p = p;
         obj.trajectories{ind_subchain,ind_task}.pd = pd;
         obj.trajectories{ind_subchain,ind_task}.pdd = pdd;
         obj.trajectories{ind_subchain,ind_task}.time = t;    
      end
  
  end

end

