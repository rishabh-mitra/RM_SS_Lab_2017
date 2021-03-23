clc;clear all;
A = [0 -83.33;500 -10];
B = [166.67;0];
C = [0 1];
D = 0;
[num,den] = ss2tf(A,B,C,D)
figure,step(tf(num,den))
% K = [0.036 -.499];
Pos = 20;
Ts = 0.5;
z = (-log(Pos/100))/(sqrt(pi^2+log(Pos/100)^2));
wn = 4/(z*Ts);
%find the desired pole location
[num1,den1] = ord2(wn,z)
r = roots(den1)
% figure,step(A-B*K,B,C,0)
figure,step(tf(num1,den1))
poles = [r(1) r(2)];
K = acker(A,B,poles);
AA = A-B*K
Tss = ss(AA,B,C,D)
[num3,den3] = ss2tf(AA,B,C,D)
figure,step(tf(num3,den3))
%10 times smaller
poles_new = 10 .* poles;
L = acker(A',C',poles_new)'
AAO = A-L*C
Tss1 = ss(AAO,B,C,D)
[num2,den2] = ss2tf(AAO,B,C,D)
figure,step(tf(num2,den2))

