clc;clear all;close all;
Fs = 8000;
wp = 1000*2/Fs; ws = 1500*2/Fs;
wpa = 1000*2*pi;wsa = 1500*2*pi;
Rp = 0.5;Rs = 30;

%Direct Method
f = [0 wp ws 1];
m = [1 1 0 0];
[b,a] = yulewalk(10,f,m);
[h,w] = freqz(b,a,128);
plot(f,m,w/pi,abs(h),'--')
legend('Ideal','yulewalk designed');
title('Comparison of Frequency Response Magnitude');