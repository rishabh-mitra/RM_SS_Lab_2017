num = [320 640];
dem = conv(conv([1 0],[1,1]),[1 8 24])
sys = tf(num,dem)
margin(sys)