clc;clear all;
num = [12 12];
dem = [1 -6 8];
sys = tf(num,dem)
nyquist(sys)