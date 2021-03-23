clc;clear all; close all;
w0 = pi/12;
yci = cos(w0);
ysi = -sin(w0);

for n=1:50
    yc(n) = cos(w0)*yci-sin(w0)*ysi;
    ys(n) = sin(w0)*yci+cos(w0)*ysi;
    ysi = ys(n);
    yci = yc(n);
end

n = 0:49;
plot(n,yc,n,ys);
figure,stem(n,yc);
figure,stem(n,ys);