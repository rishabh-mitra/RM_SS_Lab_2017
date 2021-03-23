clc;clear all;
num = [1 0];
dem = [1 0.001 100];
sys = tf(num,dem)
[A,B,C,D] = tf2ss(num,dem)
figure,impulse(sys)
figure,step(sys)
stepinfo(sys)
figure,margin(sys)
fb = bandwidth(sys)