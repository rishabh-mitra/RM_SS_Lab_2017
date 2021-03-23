clc;clear all;close all;
w_p = .2 * pi;
M = input('Enter the order of the filter');
h_hann = fir1(M,w_p/pi,hann(M+1));
h_hamm = fir1(M,w_p/pi,hamming(M+1));
h_blackman = fir1(M,w_p/pi,blackman(M+1));
h_bartlett = fir1(M,w_p/pi,bartlett(M+1));

figure,freqz(h_hann,512);
title(['Hanning Window, M =',int2str(M)]);
figure,freqz(h_hamm,512);
title(['Hamming Window, M =',int2str(M)]);
figure,freqz(h_blackman,512);
title(['Blackman Window, M =',int2str(M)]);
figure,freqz(h_bartlettt2str(M)]);
subplot(222),stem(n,h_hamm);
title(['Hamming Window, M =',int2str(M)]);
subplot(223),stem(n,h_blackman);
title(['Blackman Window, M =',int2str(M)]);
subplot(224),stem(n,h_bartlett);,512);
title(['Bartlett Window, M =',int2str(M)]);

n = 0:M;

subplot(221),stem(n,h_hann);
title(['Hanning Window, M =',in
title(['Bartlett Window, M =',int2str(M)]);

figure;
subplot(221),zplane(h_hann,1);
title(['Hanning Window, M =',int2str(M)]);
subplot(222),zplane(h_hamm,1);
title(['Hamming Window, M =',int2str(M)]);
subplot(223),zplane(h_blackman,1);
title(['Blackman Window, M =',int2str(M)]);
subplot(224),zplane(h_bartlett,1);
title(['Bartlett Window, M =',int2str(M)]);
