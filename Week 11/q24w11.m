clc;clear all;
m = 1000;
b = 50;
r = 10;

s = tf('s');
P_cruise = 1/(m*s + b);

% Kp = 600;
% Ki = 1;
Kp = 800;
Ki = 40;
C = pid(Kp,Ki);

T = feedback(C*P_cruise,1);

t = 0:0.1:20;
step(r*T,t)
axis([0 20 0 10])