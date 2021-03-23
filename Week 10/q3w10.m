clc;clear all;
%enter the tranfer function
num = 407*[1 .916];
den = poly([-1.27 -2.69]);
Sys = tf(num,den);
%to get phase variable form
[A B C D] = tf2ss(num,den)
AP = fliplr(flipud(A));
BP = flipud(B);
CP = fliplr(C);
DP = D;
%design specification
z = 0.7;
wn = 100;
% to generate continuous time second order system
[num,den] = ord2(wn,z)
sys1 = tf(num,den)
r = roots(den);
p1 = [r(1) r(2)];
L = acker(AP',CP',p1)'