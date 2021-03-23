clc;clear;
%DESIGN OF PID CONTROLLER
%uncompensated system
num=[1 ] ;
den=conv(conv([1 0],[1 1]),[1 5]);
sys1=tf(num,den);
figure,rlocus(sys1)
pos=15;wn=0;
%z=solve('exp((-z*pi)/(sqrt(1-z^2)))=0.2');
z=-log(pos/100)/sqrt(pi^2+[log(pos/100)]^2);
sgrid(z,wn);
[K,P]=rlocfind(sys1);
TP=pi/abs(imag(P(2)));

