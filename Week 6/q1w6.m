clc;clear all;
num = [0 .44 .362 .02];
dem = [1 .4 .18 -.2];
[sos,g] = tf2sos(num,dem)
[r,p,k] = residuez(num,dem)