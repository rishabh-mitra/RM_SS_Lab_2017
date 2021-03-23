clc;clear all;
num = 1;
dem = [0.2 1];
t = 0:0.01:1;
sys = tf(num,dem)
[A,B,C,D] = tf2ss(num,dem)
figure,impulse(sys)
figure,step(sys)
u = sin(2*pi*t);
figure,lsim(sys,u,t)
sys1 = feedback(sys,1)
figure,step(sys1)
kp = dcgain(sys1)
ess1 = 1/(1+kp)

figure,bode(num,dem)