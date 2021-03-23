clc;clear all;
m = 1000;
b = 50;
u = 500;

s = tf('s');
P_cruise = 1/(m*s+b);

figure,step(u*P_cruise)

figure,pzmap(P_cruise)
axis([-1 1 -1 1])

figure,bode(P_cruise)