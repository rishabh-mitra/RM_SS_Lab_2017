clc;clear all;close all;
%program to find P controller
% enter the design specification and transfer function
num = [1];
den = conv(conv([1 0],[1 10]),[1 20]);
sys1 = tf(num,den)
pos = 16;

%Obtain the root locus of the uncompensated system
figure,rlocus(sys1)

%Find the damping ratio corresponds to 16% OS 
wn = 0;
%z = solve('exp((-z*pi)/(sqrt(1-z^2))) = 0.16');
%or
z = (-log(pos/100)/sqrt(pi^2+[log(pos/100)]^2));
sgrid(z,wn);

%Find the gain at crossing point of damping ratio line and root locus
%Dominant poles and third pole
[K,P] = rlocfind(sys1);

%to check the compensated ststem closed loop step response
sys3 = feedback(K*sys1,1)
figure,step(sys3)

%To check the validity of 2nd order approximation using pole-zero map

figure;pzmap(sys3)