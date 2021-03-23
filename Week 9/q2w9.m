clc;clear all;close all;
%Design Of PI controller
%uncompensated system
num = [1];
den = conv(conv([1 1],[1 2]),[1 10]);
sys1 = tf(num,den)
figure,rlocus(sys1)
%find the dominant closed loop pole
z = 0.174,wn = 0;
sgrid(z,wn);
[K,P] = rlocfind(sys1)
kp = dcgain(K*sys1);
ESS = 1/(1+kp);
%TF of a PI controller
PI_SYS = tf([1 0.07],[1 0]);
%compensated system
S = sys1*PI_SYS
figure,rlocus(S)
sgrid(z,wn);
[K1,P1] = rlocfind(S)

%To show that transient response remains same
SU = feedback(K*sys1,1)
SC = feedback(K1*S,1)
figure(1)
step(SU)
gtext('uncompensated system')
hold
step(SC)
gtext('compensated system')