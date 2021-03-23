clc;clear all;
h2 = [1 1];
h = [1 5 10 11 8 4 1];
h1 = deconv(h,conv(h2,h2))
x = [1 -1];
y = conv(x,h)

figure,stem(y)