w = logspace(-2,6,100); % >>help logspace to understand the output
num=[1000,5000,0]; %numerator of G(s): polynomial powers high to low
den=[1 310 23100 360000]; %denominator of G(s)
[G,w] = freqs(num,den,w); %compute G(j w) for every value in w
mag_db= 20*log10(abs(G)); % calculate the magnitude G in dB
% we now convert w to f; recall the relation w = 2 pi f
semilogx(w/(2*pi),mag_db); %semilogx uses a log scale on x-axis to plot
xlabel('f / Hz');
ylabel('abs(G) / dB');
grid on
figure; % to plot on a new figure window
%function rad2deg converts radians to degrees
semilogx(w/(2*pi),rad2deg(angle(G)));
xlabel('f / Hz');
ylabel('angle(G) in degrees');
grid on