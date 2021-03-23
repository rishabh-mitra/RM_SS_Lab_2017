clc;clear;
num = [5 20];
dem = poly([0 -1 -2 -5]);
sys = tf(num,dem);
kp = dcgain(sys)
ess1 = 1/(1+kp)
s1 = tf([1 0],1);
kv =dcgain(sys*s1)
ess2 = 1/kv
ka = dcgain(sys*s1*s1)
ess3 = 1/ka
