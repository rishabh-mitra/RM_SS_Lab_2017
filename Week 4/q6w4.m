clc;clear all;
b1 = [.2066 .4131 .2066];
a1 = [1 -.3695 .1958];
[z,p,k] = tf2zp(b1,a1)
sys = tf(b1,a1,1e-4)
[r1,p1,k1] = residuez(b1,a1)
figure,zplane(b1,a1)
title('Pole zero plot')
