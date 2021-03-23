clc;clear all;
num = 6400;
dem = conv([1 1 0],[1 50]);
sys = tf(num,dem)
nyquist(sys)