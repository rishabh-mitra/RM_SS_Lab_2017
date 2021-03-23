num = 1;
dem = conv([1 1],[1 6 13]);
sys = tf(num,dem)
rlocus(sys)
%select a point in the graphics window
%[K,P] = rlocfind(num,dem)