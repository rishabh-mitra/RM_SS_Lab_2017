clc;clear all;
num = [-1 -5];
dem = conv([1 0],[1 1]);
sys = tf(num,dem)
rlocus(sys)