clc;clear all;
n = 0:23;
phi = 3*pi/8;
x = 1+sin((pi*n/12)+phi);
x1 = fft(x,24)/24
X = fftshift(x,24)/24;
stem(X)