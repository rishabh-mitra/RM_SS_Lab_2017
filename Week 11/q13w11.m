clc;clear all;
J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
s = tf('s');
P_motor = K/((J*s+b)*(L*s+R)+K^2)

%state space
motor_ss = ss(P_motor)
% Kp = 75;
% Ki = 1;
% Kd = 1;
% Kp = 100;
% Ki = 200;
% Kd = 1;
Kp = 100;
Ki = 200;
Kd = 10;
C = pid(Kp,Ki,Kd);
sys_c1 = feedback(C*P_motor,1)

% t = 0:1:200;
% t = 0:0.01:4;
t = 0:0.01:4;
step(sys_c1,t)
grid
title('Step response with PID control')

