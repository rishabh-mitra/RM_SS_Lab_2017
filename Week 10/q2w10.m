clc;clear all;
%enter the tranfer function
num = 20*[1 5];
den = poly([0 -1 -4]);
sys = tf(num,den);
%to get phase variable form
[A B C D] = tf2ss(num,den)
AP = fliplr(flipud(A));
BP = flipud(B);
CP = fliplr(C);
DP = D;
%design specification
Pos = 9.5;
Ts = 0.74;
z = (-log(Pos/100))/(sqrt(pi^2+log(Pos/100)^2));
wn = 4/(z*Ts);
%find the desired pole location
[num,den] = ord2(wn,z);
r = roots(den);
p1 = [r(1) r(2) -5];
%design of feedback gain matrix
K = acker(AP,BP,p1)
Anew = AP-BP*K;
Tss = ss(Anew,BP,CP,DP)