clc; clear all;
a1 = [1 -.3695 .1958];
b1 = [.2066 .4131 .2066];
figure,impz(b1,a1,20)
title('Impulse Response')

step_n = [ones(1,20)];
% x0 = [0:19];
y = filter(b1,a1,step_n);
figure,stem(y)
title('Step response')