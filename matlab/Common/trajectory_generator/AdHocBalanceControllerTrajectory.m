% n_of_basis   = parameters(1);
% redundancy   = parameters(2);
% range        = parameters(3); 


function [p,pd,pdd,time,obj4visual] = AdHocBalanceControllerTrajectory(s_ext,time_struct,parameters,type)
 
   n_of_basis   = parameters(1);
   redundancy   = parameters(2);
   starting_position_x = parameters(3);  
   starting_position_y = parameters(4);
   starting_position_z = parameters(5); 
   ending_position_x = parameters(6);  
   ending_position_y = parameters(7);
   ending_position_z = parameters(8);
   
   
   % i need to more basis to fix the first and the last value of the rbf
   real_n_of_basis = n_of_basis + 2;
   
   t = sym('t');
   theta = sym('theta',[n_of_basis*3,1]);
   
   
   %% time law
   T = time_struct.tf;
   sigma = (T)/((real_n_of_basis-1)*redundancy); % this value of sigma produces a 15% of overlapping between two consecutive gaussian with redundancy = 3;
   cof = 2*sigma^2;
   sumphi = 0;
   % first and last basis function are special
   for i=0:(real_n_of_basis - 1)
       phi(i + 1) = exp(-(t-(i*T)/(real_n_of_basis-1))^2/cof);
       basis_functions_time{i + 1} = matlabFunction(phi(i+1));
       sumphi = sumphi + phi(i + 1);
   end
   
   %% plot basis functions
%    time = time_struct.ti:time_struct.step:time_struct.tf;
%             
%    for j=1:real_n_of_basis
%        i=1;
%        for ti = time
%            results(j,i) = feval(basis_functions_time{j},ti); 
%            i=i+1;
%        end
%    end    
%    figure
%    hold all;
%    for j=1:real_n_of_basis
%        plot(results(j,:))
%    end
   %% end plot
   
   
   mat = [subs(phi(1), t, 0)      subs(phi(end), t, 0);
          subs(phi(1), t, T)      subs(phi(end), t, T) ];
      
   phi_computed_in_start =[];
   phi_computed_in_end   =[];
   for i=1:length(phi)
       phi_computed_in_start = [phi_computed_in_start,subs(phi(i), t, 0)];
       phi_computed_in_end   = [phi_computed_in_end  ,subs(phi(i), t, T)];
   end   
         
   y0 = 0;
   yf = 1;
   vector = [y0*sum(phi_computed_in_start) - phi_computed_in_start(2:end-1)*theta(1:n_of_basis); 
             yf*sum(phi_computed_in_end)   - phi_computed_in_end(2:end-1)*theta(1:n_of_basis) ];
         
   lambda = mat\vector;
   
   s = (phi(2:end-1)*theta(1:n_of_basis) + lambda(1)*phi(1) + lambda(2)*phi(end))/sumphi;
   
   
   %% geometric path. TODO change back the time depenecy into s (the time law)
   T = 1;
   sigma = (T)/((real_n_of_basis-1)*redundancy); % this value of sigma produces a 15% of overlapping between two consecutive gaussian with redundancy = 3;
   cof = 2*sigma^2;
   sumphi = 0;
   for i=0:(real_n_of_basis - 1)
       phi(i + 1) = exp(-(t-(i*T)/(real_n_of_basis-1))^2/cof);
       basis_functions_time{i + 1} = matlabFunction(phi(i+1));
       sumphi = sumphi + phi(i + 1);
   end
   
      %% plot basis functions
%    time = time_struct.ti:0.001:T;
%             
%    for j=1:real_n_of_basis
%        i=1;
%        for ti = time
%            results(j,i) = feval(basis_functions_time{j},ti); 
%            i=i+1;
%        end
%    end    
%    figure
%    hold all;
%    for j=1:real_n_of_basis
%        plot(results(j,:))
%    end
   %% end plot
   
   mat = [subs(phi(1), t, 0)      subs(phi(end), t, 0);
          subs(phi(1), t, T)      subs(phi(end), t, T) ];
      
   phi_computed_in_start =[];
   phi_computed_in_end   =[];
   for i=1:length(phi)
       phi_computed_in_start = [phi_computed_in_start,subs(phi(i), t, 0)];
       phi_computed_in_end   = [phi_computed_in_end  ,subs(phi(i), t, T)];
   end   
   
   o_x = starting_position_x;
   f_x = ending_position_x;
   vector = [o_x*sum(phi_computed_in_start) - phi_computed_in_start(2:end-1) * theta(n_of_basis + 1:n_of_basis*2); 
             f_x*sum(phi_computed_in_end)   - phi_computed_in_end(2:end-1)   * theta(n_of_basis + 1:n_of_basis*2) ];    
   lambda = mat\vector;      
   
   rbfx = ( phi(2:end-1)*theta(n_of_basis + 1:n_of_basis*2) + lambda(1)*phi(1) + lambda(2)*phi(end) )/sumphi;
   
   rbfy = starting_position_y;
   
   o_z = starting_position_z;
   f_z = ending_position_z;
   vector = [o_z*sum(phi_computed_in_start) - phi_computed_in_start(2:end-1) * theta(n_of_basis*2 + 1:n_of_basis*3); 
             f_z*sum(phi_computed_in_end)   - phi_computed_in_end(2:end-1)   * theta(n_of_basis*2 + 1:n_of_basis*3) ];
   lambda = mat\vector; 
   
   rbfz = + ( phi(2:end-1)*theta(n_of_basis*2 + 1:n_of_basis*3)  + lambda(1)*phi(1) + lambda(2)*phi(end) )/sumphi;
   
   % i need this to change the value from time to s coordinate to add the
   % time law
   p = subs(p,t,s);
   
   p   = [rbfx;rbfy;rbfz];
   pd  = diff(p,t);
   pdd = diff(pd,t);
   
  
   % transform the expression in matlab function of t 
   p = matlabFunction(p,'vars', {t,theta});
   pd = matlabFunction(pd,'vars', {t,theta});
   pdd = matlabFunction(pdd,'vars', {t,theta});

   time = 0;
   
   if(strcmp(type,'sampled'))
      time=time_struct.ti:time_struct.step:time_struct.tf;
 
      p = p(time);
      pd = pd(time);
      pdd = pdd(time);     
   end
   %% for visualization
   obj4visual.p_v = p;
   sd = diff(s,t);
   sdd = diff(sd,t);
   
   s   = matlabFunction(s,'vars', {t,theta});
   sd  = matlabFunction(sd,'vars', {t,theta});
   sdd = matlabFunction(sdd,'vars', {t,theta});
   
   obj4visual.s = s;
   obj4visual.sd = sd;
   obj4visual.sdd = sdd;
   
end
