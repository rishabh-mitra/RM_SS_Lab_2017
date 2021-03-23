clc;
clear all;
num1 = 0.01;
dem1 = conv(conv([0.1 0],[0.1 1]),[0.5 1]);
numf = tf(num1,dem1)
num2 = [.01*.01 0];
dem1 = conv(conv([0.1 0],[0.1 1]),[0.5 1]);
demp = tf(num2,dem1)
demf = 1+demp
sys = tf(numf,demf)
figure,impulse(sys)
figure,step(sys)