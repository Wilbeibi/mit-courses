function dvdo = systemPS5(t,y)

% This is the corresponding "system" file for solverPS3.m. 
% This code is called by the "solver" and is provided with some
% information.  It is given the current location of the system (x,dxdt)
% which comes in as a column vector and the current time.  It will return
% the derivative vector for this point, dy.


%  You will need to modify this code in order to do the problem.  Modify 
% the following parameter of 'r' in order to see how the parameter modifies 
% the position of the stable fixed points.

dvdo = zeros(size(y));

D = 2;

% The following is the ODE that you will need to program in.  A different
% system is currently in place and will need to be updated to the system in
% Problem 4.

v = y(1);
o = y(2);

dvdo(1) = - sin(o) - D*v^2;
dvdo(2) = - cos(o) / v + v;
