%%syms R1 i1 R2 i2 il C s is

%%is = 6/(s+2);
% 
% C = 0.1076;
% 
% R1 = 10;
% R2 = 5;
% L = 0.6196
% 
% i1 = is;
% 
% n1 = R1*(i2-i1) + (9.294/s)*(i2) - 60/s + R2*(i2-il) == 0;
% n2 = 0 == R2*(il-i2) + 0.6196*s*il;
% 
% [I2 IL] = solve([n1 n2], [i2 il]);
% 
% pretty(simplify(IL));
% 

syms i2 s I t i1 i3 Vp Va  R2 c R1 Vs n
% 
% pretty(simplify(20*s*((20*s*i2 + 20*I)/(20*s+20))*(1/(30*s+10))));
% 
% 
% pretty(simplify(fourier(t*(heaviside(t) - heaviside(t-4)))));
% vi = 55/s;
% Z1 = 1+1/s;
% i1 = vi/Z1;
% Zth = (1/Z1 + 1/(2*s) + 1/0.5)^-1;
% Vth = i1 * Zth;
% pretty(simplify(Vth));

% A = [ (4/j + 7 + j) -(2+j) -2; -(2+j) (6+j) -2; -2 -2 6];
% B = [12; 6j; -12];
% X = A\B
% iL = X(1) - X(2)
% abs(iL)
% angle(iL)*180/pi
% 
% A = [7-3i -2-1i -2;
%     2+1i -6-1i 2;
%     1 1 -3];
% b = [12; -6i; 6];
% x = A\b;
% 
% iL = x(1) - x(2)
% abs(iL)
% angle(iL)*180/pi

pretty(simplify(4/(pi*n*2000)*1/(2/2000+(j*pi*n)/500)));

