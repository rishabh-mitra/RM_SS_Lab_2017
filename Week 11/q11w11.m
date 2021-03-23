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
sys1 = feedback(P_motor,1)
ltiview('step',sys1,0:0.1:5)


k = dcgain(sys1)
ess = 1/(1+k)