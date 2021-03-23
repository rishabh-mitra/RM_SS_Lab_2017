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
Kp = 100;
C = pid(Kp);
sys_c1 = feedback(C*P_motor,1)

t = 0:0.01:5;
step(sys_c1,t)
grid
title('Step response with proportional control')