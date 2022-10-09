clear all
num=[1000,5000,0]; %numerator of G(s): polynomial powers high to low
den=[1 310 23100 360000]; %denominator of G(s)
[z,p,k]=tf2zp(num,den);
disp(z) % the zeros
disp(p) % the poles
disp(k) % the gain K