clc;clear all;
m = 1000;
b = 50;
u = 500;

s = tf('s');
P_cruise = 1/(m*s+b);

Kp = 1;
Ki = 1;
Kd = 1;
C = pid(Kp,Ki,Kd)

T = feedback(C*P_cruise,1);
figure,step(T)