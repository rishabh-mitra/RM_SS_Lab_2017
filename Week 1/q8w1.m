num = [1];
dem = [1 2 1];
sys = tf(num,dem);
s1 = tf(1,[1 0]);
sys1 = s1*sys;
step(sys1)