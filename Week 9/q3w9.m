clc;clear;
%DESIGN OF PD CONTROLLER
%uncompensated system
num=[1] ;
den=conv(conv([1 0],[1 4]),[1 6]);
sys1=tf(num,den);
figure,rlocus(sys1)
pos=16;wn=0;
%z=solve('exp((-z*pi)/(sqrt(1-z^2)))=0.2');
z=-log(pos/100)/sqrt(pi^2+[log(pos/100)]^2);
sgrid(z,wn);
[K,P]=rlocfind(sys1);
%sys2=feedback(sys1,1);
%pzmap(sys2)

%wn1=imag(P(2))/(sqrt(1-z^2))
TS=4/abs(real(P(2)));

%DESIGN OF COMPENSATOR
%REAL PART OF DOMINANT POLES OF COMPENSATED SYSTEM 
S1=-4/(TS/3);
%IMAGINARY PART
WD=(-S1*sqrt(1-z^2))/z;
%desired compensated dominant pole
P2=S1+WD*j;
%to find the location of zero
%w.r.t the dominant closed loop poles sum of angle contribution of 
%open loop poles
%Q=pole(sys1)
%AC=(tan((WD)/(Q(1)-abs(S1))+(tan((WD-Q(1))/abs(S1))
an_p=(180/pi)*(angle(polyval(num,P2)/polyval(den,P2)))
PD_angle=180-an_p;
zc=(imag(P2)/tan(PD_angle*pi/180))-(real(P2));
%PD CONTROLLER
sysc=tf([1 zc],[0 1]);
%compensated system
SC=sys1*sysc;
figure,rlocus(SC)
sgrid(z,wn)

[K1,P1]=rlocfind(SC);
SCC=feedback(K1*SC,1)
figure(1)
step(SCC)
hold on
SCU=feedback(K*sys1,1);
step(SCU)
