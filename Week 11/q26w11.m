clc;clear all;
m = 1000;
b = 50;
r = 10;

s = tf('s');
P_cruise = 1/(m*s+b);

figure,rlocus(P_cruise)
axis([-0.6 0 -0.6 0.6]);
sgrid(0.6, 0.36)
% [Kp,poles]=rlocfind(P_cruise)
Kp = 350.3158
sys_cl = feedback(Kp*P_cruise,1);
t = 0:0.1:20;
figure,step(r*sys_cl,t)