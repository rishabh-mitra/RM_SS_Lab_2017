clc;clear all;
num = [1 1.2 .6];
dem = [1 -1 -.25 .25];

[kb,vb] = tf2latc(num,dem)