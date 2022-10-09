step=0.01;
x1 = 0:step:sqrt(pi); 
x2=sqrt(pi):step:10; 
f1 = cos(x1-sqrt(pi)); % f(x) over interval x1
f2 = pi*cos(x2.^2-pi).^2; % f(x) over interval x2
plot(x1,f1,x2,f2) 
xlabel('x') 
title('f(x)')
grid on