t1 = linspace(0,3.*pi);
c = t1.*exp((-j.*pi/4).*t1);
x = abs(c);
y = angle(c);
%plot(t1, x)
%hold on
plot(t1, x, 'g--', t1, y, 'b--')
%plot(t1, y)
%hold off