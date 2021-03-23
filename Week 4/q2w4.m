clc;clear all;
x = [1 2 4];
x0 = [-1:5];
h = [1 1 1 1 1];
y = conv(x,h)
stem(x0,y)
title('Impulse Response')