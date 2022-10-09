%%%%%%%%%%%%%%%%%%%%%%%%%
% An example program to plot a sinusoid function.
%%%%%%%%%%%%%%%%%%%%%%%%%
w = 2/3; % frequency
phi = pi/3; % phase
step = 0.05; % step in defining a time vector
t = 0.5:step:10; % time vector, the values of t are between 0 and 6*pi,
A = exp(-t); % amplitude of the sinusoid
%the difference of two consecutive values is step
y = A.*sin(w*t + phi); % computing function y(t) = Acos(wt+phi)
plot(t, y) ; % plotting figure
title('A Sinusoid Signal') ; % the title of the figure
xlabel('time'); % writing x label
ylabel('Asin(\omega t + \phi)'); % writing y label
grid on % display the grid