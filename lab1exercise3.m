step=0.01;
% First piecewise function
x1 = 0:step:100; 
x2=-10:step:0; 
f1 = ((3.*x1)+10)./((9.*x1)+100); % q(x) over interval x1
f2 = (1/10).*exp(x2); % q(x) over interval x2
% Second piecewise function
x3 = -1:step:1; 
x4=1:step:10; 
f3 = abs(x3); % y(x) over interval x1
f4 = sin(x4)./x4; % y(x) over interval x2
subplot(2,1,1), plot(x1,f1,x2,f2) 
xlabel('x') 
title('q(x)')
subplot(2,1,2), plot(x3,f3,x4,f4) 
xlabel('x') 
title('y(x)')
grid on