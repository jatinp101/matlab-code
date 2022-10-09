t1 = linspace(0,3, 10);
t2 = linspace(0,5, 10);
t3 = linspace(-2.99,6.99, 10);
a = 40.*cos(4.*t1/5+2.*pi/7);
b = (a/2 + 30.*sin(t2/2+exp(1)));
c = a./10.*sqrt(abs(b)).*t3.*exp(-t3);
figure(1)
% plot(t1, a)
% hold on
% plot(t2, b)
% plot(t3, c)
% hold off
plot(t1, a, 'g--x', t2, b, 'b--+', t3, c, 'm--^')