%enter the transfer function
num = [5 3 6];
dem = [1 6 11 6];
sys1 = tf(num,dem)
%transfer function to zero pole
[z,p,k] = tf2zp(num,dem)
[num1,dem1] = zp2tf(z,p,k)
pzmap (num,dem)
[r1,p1,k1] = residue(num,dem)
[num2,dem2] = residue(r1,p1,k1)
[A,B,C,D] = tf2ss(num2,dem2)
[num3,dem3] = ss2tf(A,B,C,D)
M1 = flipud(A)
M2 = fliplr(M1)