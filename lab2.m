clear all; %clear all variables
close all; %close all figures (if any)
syms t; % Define symbolic variable t
R=0.5; L=10^(-3); C=100*10^(-3)/6;% Circuit constants
y0= 5*exp(-300*t)*(23*exp(100*t) - 22)% Let solution i(t)=y0
y1=diff(y0); % Compute the first derivative of y0, i.e., di/dt
y2=diff(y0,2); % Compute the second derivative of y0, i.e, di2/dt2
% Substitute the solution i(t),
% into differential equation of to verify
% that correct solution was obtained.
% We must also verify that the initial
% conditions are satisfied
y=y2+500*y1+60000*y0;
i0=subs(y0,t,0);
vC0=-R*i0-L*subs(y1,t,0)+15;
fprintf(' \n');
disp('Solution was entered as y0 = '); disp(y0);
disp('1st derivative of solution is y1 = '); disp(y1);
disp('2nd derivative of solution is y2 = '); disp(y2);
disp('Differential equation is satisfied since y = y2+y1+y0 = '); disp(y);
disp('1st initial condition is satisfied since at t = 0, i0 = '); disp(i0);
disp('2nd initial condition is also satisfied since vC+vL+vR=15 and vC0 = ');
disp(vC0);
fprintf(' \n')
step=0.001;
t0 = 0:step:0.025;
i0= 5.*exp(-300.*t0).*(23.*exp(100.*t0) - 22)
plot(t0,i0) 