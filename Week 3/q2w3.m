clc;clear all;
num1 = 1;
dem1 = [1 0.2 1];
num2 = 1;
dem2 = [1 1.8 1];
sys1 = tf(num1,dem1)
sys2 = tf(num2,dem2)

figure,impulse(sys1)
figure,step(sys1)

figure,impulse(sys2)
figure,step(sys2)

t=0:0.01:1;
u = sin(2*pi*t);

figure,lsim(sys1,u,t)
figure,lsim(sys2,u,t)

figure,bode(sys1)
figure,bode(sys2)

stepinfo(sys1)
stepinfo(sys2)

fb1 = bandwidth(sys1)
fb2 = bandwidth(sys2)