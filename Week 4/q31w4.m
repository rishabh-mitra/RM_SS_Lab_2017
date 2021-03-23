clc; clear all;
b1 = [1 2];
a1 = 1;
figure,impz(b1,a1,20)
title('Impulse Response')

step_n = [ones(1,20)];
x0 = [0:19];
y = filter(b1,a1,step_n)
figure,stem(x0,y)
title('Step response')