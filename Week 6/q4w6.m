clc;clear all; 
w_p = 0.2*pi;
w_s = 0.3*pi;
M = input('Enter the length of filter')
pass = fix(w_p * M/(2*pi))+1;
stop = fix(w_s * M/(2*pi))+1;
trans = stop - pass;
if rem(M,2) == 0,
    U = M/2-1;
else
    U = (M-1)/2;
end
if trans == 1,
    Hr = [ones(1,pass),zeros(1,U-pass+1)];
else
    tk = pass+1:stop;
    trans_amg = 0.5 * (1 + cos(pi * (tk-pass)/trans));
    Hr = [ones(1,pass),trans_mag,zeros(1,U-stop+1)];
end
K = 0:U;
G = (-1)./K.*Hr;
if rem(M,2) == 0,
    G_M = [G 0 -G(U+1:-1:2)];
elsec
    G_M = [G -G(U+1:-1:2)];
end
I = 0:M-1;
H = G_M.*exp(pi*i*j/M);
h = ifft(H);
Mag = abs(fft(h,512));
w = [0:255] * pi/256;
plot(w,Mag(1:256));
figure,freqz(h,1,512);
    