clc;clear all;
a1 = 1;
b1 = [1 -.9];
figure,freqz(b1,a1,64)
title('Frequency response')
figure,zplane(a1,b1)
