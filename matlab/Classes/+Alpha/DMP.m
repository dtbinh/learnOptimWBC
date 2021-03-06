classdef  DMP < Alpha.AbstractAlpha
    
% gaussian radial basis function
    
    
    properties
        time_struct            % struct with time_struct.ti time_struct.tf time_struct.step
        n_of_basis             % number of functions that compose our RBF
        redundancy             % parameter that control the level of overlapping of the function
        basis_functions        % cell array of basis function
        kp                     % parameter of pd (position)
        kd                     % parameter of pd (velocity)
        alpha_z                % smoothing factor of non linear force
        func                   % handle to dmp(theta,t) 
        sample                 % value for a specific set of theta and sampling time (sample.time sample.values sample.normvalues)
    end


    
    methods
        function obj = DMP(time_struct,n_of_basis,redundancy,kp,kd,alpha_z)
            obj.time_struct = time_struct;
            obj.n_of_basis = n_of_basis;
            obj.redundancy = redundancy;
            obj.kp = kp;
            obj.kd = kd;
            obj.alpha_z = alpha_z;
            obj.BuildDMP();
            
            
        end

        function BuildDMP(obj)
            t  = sym('t');
            pd = sym('pd');
            pt = sym('pt');
            vd = sym('vd');
            vt = sym('vt');
            
            theta = sym('theta',[obj.n_of_basis,1]);
            T = obj.time_struct.tf;
            
            z = exp(-obj.alpha_z*t);
            
            % this value of sigma produces a 15% of overlapping between two 
            % consecutive gaussian with redundancy = 3;
            sigma = (T)/((obj.n_of_basis-1)*obj.redundancy);
            cof = 2*sigma^2;
            
            for i=0:(obj.n_of_basis-1)
                
                psi(i+1) = (exp(-(t-(i*T)/(obj.n_of_basis-1))^2/cof))*z;
                obj.basis_functions{i+1} = matlabFunction(psi(i+1));
            end

            f = psi*theta;
            dmp = obj.kd*obj.kp*(pd-pt) + obj.kd*(vd-vt) + f;
            obj.func = matlabFunction(dmp,'vars', {t,pd,pt,vd,vt,theta});
                        
        end
        
        
        % return the value of the alpha function at time t
        % using normalized value
        
        %interface function
        function result = GetValue(obj,t)
            [~,ind] = min(abs(obj.sample.time-t));
            result = obj.sample.values(ind);
        end
        
        
        %interface function 
        function ComputeNumValue(obj,p_init,v_init,pd,vd,theta)
            
            time = obj.time_struct.ti:obj.time_struct.step:obj.time_struct.tf;
            i=1;
            pt = p_init;
            vt = v_init;
            for t = time
                
                at = feval(obj.func,t,pd,pt,vd,vt,theta); 
                
                %new position
                pt = pt + vt*obj.time_struct.step + at*obj.time_struct.step^2/2;
                %new velocity
                vt = vt + at*obj.time_struct.step;
                
                obj.sample.values(i) = pt;
                i=i+1;
                
            end
            
            % saturation to keep value between zero and one
            obj.sample.values(obj.sample.values>=1) = 1;
            obj.sample.values(obj.sample.values<=0) = 0;
            
            obj.sample.time = time;
            
        end
        
        %interface function
        function n=GetParamNum(obj)
            n=obj.n_of_basis;
        end
             
        
        function PlotBasisFunction(obj)
            
            time = obj.time_struct.ti:obj.time_struct.step:obj.time_struct.tf;
            
            for j=1:obj.n_of_basis
                i=1;
                for t = time
                    results(j,i) = feval(obj.basis_functions{j},t); 
                    i=i+1;
                end
            end
            
            hold all;
            for j=1:obj.n_of_basis
                plot(results(j,:))
            end
            
        end
        
        % this function modifies the value of "sample" in timestruct 
        function [p_init,v_init,p_end,v_end,theta] = TrainByDraw(obj,number_of_pivot,step)
           
           [p ,pd ,pdd, time] = RecordTrajectory(number_of_pivot,step,obj.time_struct.tf);
           % Compute the forcing function given the desired trajectory
           f = pdd' - obj.kp*obj.kd*(ones(length(p),1)*p(end) - p') - obj.kd*(ones(length(p),1)*pd(end) - pd');
           
           PHI = zeros(size(time,2),obj.n_of_basis);
           
           for j=1:obj.n_of_basis
              index = 1;
              for t=time
                 PHI(index,j) = obj.basis_functions{j}(t);
                 index = index + 1;
              end
           end
           
           theta = (PHI'*PHI)\PHI'*f;
           p_init = p(1);
           v_init = pd(1);
           p_end  = p(end);
           v_end  = pd(end);
           

        end
        
        
        
    end
    
    methods (Static)
        
        function DMPs = BuildCellArray(n_subchain,n_task,time_struct,n_of_basis,redundancy,kp,kd,Po,Vo,Pd,Vd,alpha_z,train,number_of_pivot,step)
            
            for i=1:n_subchain
               for j=1:n_task
                   DMPs{i,j} = Alpha.DMP(time_struct,n_of_basis,redundancy,kp,kd,alpha_z);
                   if(train)
                        [p_init,v_init,p_end,v_end,theta] = DMPs{i}.TrainByDraw(number_of_pivot,step);
                        DMPs{i,j}.ComputeNumValue(p_init,v_init,p_end,v_end,theta); 
                   else
                        DMPs{i,j}.ComputeNumValue(Po,Vo,Pd,Vd,theta); 
                   end
               end
            end
            
        end
    end
    
   




   
end
