clc;clear all;
n = 0:23;
x = 0:23;
phi = 3*pi/8;
for i=1:24
    x(i) = 1+sin((pi*i/12)+phi)
end

