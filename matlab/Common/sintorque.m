%test function that impose a sinusoidal torque 

function  tau=sintorque(robot, t, q, qd)


n = robot.n;
tau = zeros(1,n); 
tau(1) = 100*sin(t);

end
