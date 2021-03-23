clc;clear all;
num = 10;
dem = [1 14 50];
sys = tf(num,dem)
%step(sys);
kp = dcgain(sys)
ess1 = 1/(1+kp)
s1 = tf([1 0],1);
kv = dcgain(sys*s1)
ess2 = 1/kv
ka = dcgain(sys*s1*s1)
ess3 = 1/ka
sys1 = feedback(sys,1);
step(sys1)
hold 
s2 = tf(1,[1 0]);
sys2 = sys1*s2;
step(sys2)
hold on
s3 = tf(1,[1 0 0]);
sys3 = sys1*s3;
step(sys3)
hold off