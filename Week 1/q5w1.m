A = [-1 -1;6.5 0];
B = [1 1;1 0];
C = [1 0;0 1];
D = [0 0;0 0];

[NUM1,DEM] = ss2tf(A,B,C,D,1)
[NUM2,DEM] = ss2tf(A,B,C,D,2)