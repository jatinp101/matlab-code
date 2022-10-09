clear all; close all; clc;
syms V1 V2 V3 R C s
Z=1/(s*C);
eqn1 = (V1-V3)/Z+(V2-V3)/Z==V3/R;
eqn2 = (V1-V2)/R== (V2-V3)/Z;
X_SOL = solve([eqn1 eqn2],[V2 V3]);
V2=X_SOL.V2; V3=X_SOL.V3;
disp('V2='); pretty(V2)
disp('V3='); pretty(V3)
H=simplify(V2/V1)
H=subs(H,{R,C},{56e3,10e-9})

[N,D] = numden(H);
[z,p,k] = tf2zp(N,D);
disp(z)
disp(p)
disp(k)