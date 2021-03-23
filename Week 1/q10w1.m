num = 1;
dem = conv(conv([1 0],[1 1 1]),[1 2]);
sys1 = tf(num,dem)
sys2 = feedback(sys1,1)
pzmap(sys2)