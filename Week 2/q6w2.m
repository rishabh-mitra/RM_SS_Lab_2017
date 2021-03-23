clc;clear all;
num = 1300;
dem = conv([1 2 0],[1 50]);
sys = tf(num,dem)
[Gm,Pm,Wgm,Wpm] = margin(sys)
margin(sys)