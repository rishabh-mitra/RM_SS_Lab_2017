clc;clear all;
A = [0 1 0;0 0 1;-160 -56 -14];
B = [0;1;-14];
C = [1 0 0];
D = [0];
lambda = eig(A)
[num,dem] = ss2tf(A,B,C,D)
sys = tf(num,dem)
pzmap(sys)
grid on

