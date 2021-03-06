clc;clear all;close all;
Rp = .94406;
Rs = .0316227;
Fs = 8000;
f = [1000 1500];
a = [1 0];
dev = [Rp Rs];
[n,fo,mo,w] = firpmord(f,a,dev,Fs);
hopt = firpm(n,fo,mo,w);
[H,W] = freqz(hopt,1,1024);
plot(fo,mo,W/pi,abs(H));
title('Low Pass Filter');