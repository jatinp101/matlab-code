R = 56e3;
C = 10e-9;
num=[1*C^2*R^2,2*C*R,1];
den=[1*C^2*R^2 3*C*R 1];
[z,p,k] = tf2zp(num,den);
disp(z)
disp(p)
disp(k)