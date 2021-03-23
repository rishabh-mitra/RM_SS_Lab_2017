clc;clear all;
num = [2 5 1];
dem = [1 2 3];
sys = tf(num,dem)
nyquist(sys)
grid on
