clc;clear all;
s = [1 10 36 60 59 50 24];
r = roots(s)
sys = tf(1,s);
pzmap(sys)
