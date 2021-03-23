clc;clear all;
num = 1;
dem = conv([1 4 0],[1 4 20]);
sys = tf(num,dem)
rlocus(sys)