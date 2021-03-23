clc;clear all;close all;
Fs = 48000;
wp = 12000*2/Fs; ws = 8000*2/Fs;
Rp = 0.5; Rs = 60;

%Chebyshev Filter
%Billinear
[Nc11,wn_c11] = cheb1ord(wp,ws,Rp,Rs);
[num_c11,den_c11] = cheby1(Nc11,Rp,wn_c11,'high');

f = 0:10:Fs/2;
hc11 = freqz(num_c11,den_c11,f,Fs);
figure,plot(f,20*log10(abs(hc11)));
title('Chebyshev I Filter');
figure,plot(f,abs(hc11));
title('Chebyshev I Filter');