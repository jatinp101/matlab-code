syms s c r k k1 k2 vp vx vo vi

vp = vo/k;

n1 = (vo-vx)/r + (vi-vx)/(1/(s*c)) == (vx-vp)/(1/(s*c));
n2 = (vx-vp)/(1/(s*c)) == vo/(r*k);

[Vo, Vi] = solve([n1 n2], [vo vi]);

Hs = Vo/Vi;

pretty(simplify(Hs))

Hss = Hs/(r^2*c^2);
pretty(simplify(Hss))
H1s = subs(Hss, k, k1)
H2s = subs(Hss, k, k2)

H = H1s*H2s

r = 18E3; c = 10E-9; k = 1.586;

num = [k 0 0];
den = [1 (3-k)/(r*c) 1/(r^2*c^2)];

w = logspace(1.798179868, 4.798179868, 10000); 
[mag, w] = freqs(num, den, w);
mag_db = 20*log10(abs(mag)); 
f = w/(2*pi);   %10 Hz to 10k Hz

%semilogx(f, mag_db);
title('|H(f)|');
xlabel('frequency (Hz)');
ylabel('magnitude (dB)');
grid on
hold on

f_meas = [10 20 30 100 150 200 500 600 900 1000 5000 10000];
dB = [-73.85 -61.81 -54.77 -33.85 -26.81 -21.82 -6.31 -3.56 1.14 1.93 3.99 3.96];
hold on
%semilogx(f_meas, dB);
%%xlabel("Hz");
%%ylabel('dB');
%%grid on

%%f_meas = [10 20 30 100 150 200 500 600 900 1000 5000 10000];
%%dB = [-144.73 -120.64 -106.55 -64.65 -50.47 -41.75 -7.36 -0.80 10.60 11.88 11.17 11.00];
%semilogx(f_meas, dB);
%%xlabel("Hz");
%%ylabel('dB');
%%grid on



%%
k1 = 1.586; k2 = 2.235;

pretty(simplify(H));

r = 18E3; c = 10E-9; k1 = 1.586; k2 = 2.235;

num_1 = [k1*k2 0 0 0 0];
den_1 = [c^4*r*4 (6*c^3*r^3 - c^3*k1*r^3) (11*c^2*r^2 - 3*c^2*k2*r^2 + c^2*k1*k2*r^2) (6*c*r - c*k1*r-c*k2*r) 1 ];

w = logspace(1.798179868, 4.798179868, 10000); 
[mag, w] = freqs(num, den, w);
mag_db = 20*log10(abs(mag)); 
f = w/(2*pi);   %10 Hz to 10k Hz
hold on
%semilogx(f, mag_db);
grid on
hold on
f_meas_2 = [10 20 30 100 150 200 500 600 900 1000 5000 10000];
dB_1 = [-144.73 -120.64 -106.55 -64.65 -50.47 -41.75 -7.36 -0.80 10.60 11.88 11.17 11.00];
%semilogx(f_meas_2, dB_1);

LH = ilaplace(((k1*k2*s^4)/(c^4*r*4*s^4 + (6*c^3*r^3 - c^3*k1*r^3)*s^3 + (11*c^2*r^2 - 3*c^2*k2*r^2 + c^2*k1*k2*r^2)*s^2 + (6*c*r - c*k1*r-c*k2*r)*s +1)/s));

pretty(simplify(LH))
fplot(LH, [0,3.5E-3])
xlabel('Time (s)')
ylabel('Magnitude')
title('Step Response')




