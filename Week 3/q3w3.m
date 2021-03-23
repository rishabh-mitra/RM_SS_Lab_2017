clc;clear all;
num = 1;
dem = [1 1];
sys = tf(num,dem)
[A,B,C,D] = tf2ss(num,dem)
figure,impulse(sys)
figure,step(sys)
figure,margin(sys)
stepinfo(sys)
fb = bandwidth(sys)