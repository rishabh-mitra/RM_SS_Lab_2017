clc;clear all;
a1 = 1;
b1 = [0.5 0.5];
figure,freqz(b1,a1,64)
title('Frequency response')
figure,zplane(a1,b1)
