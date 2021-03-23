clc;clear all;
num = 1;
dem = conv([1 1 0],[1 5]);
sys = tf(num,dem)
rlocus(sys)