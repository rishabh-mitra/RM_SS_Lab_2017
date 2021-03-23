clc;clear all;
A = [-2 -1 -3;0 -2 1;-7 -8 -9];
B = [2;1;2];
C = [4 6 8];
D = 0;
Om = obsv(A,C)
Cm = ctrb(A,B)
Rank0 = rank(Om)
unob = length(A) - Rank0
O1 = det(Om)
RankC = rank(Cm)
unco = length(A) - RankC
C1 = det(Cm)