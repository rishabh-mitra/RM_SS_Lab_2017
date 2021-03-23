clc;clear all;
num = 1;
dem = conv([1 1],[1 6 13]);
sys = tf(num,dem)
rlocus(sys)