clc;clear all;
a1 = [1 -.3695 .1958];
b1 = [.2066 .4131 .2066];
figure,freqz(b1,a1,64)
title('Frequency response')
figure,zplane(a1,b1)
