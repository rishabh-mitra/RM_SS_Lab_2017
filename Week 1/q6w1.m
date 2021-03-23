clear;clc;
z=0.2:0.2:1;
hold
for p=1:length(z);
num = 1;
dem = [1 2*z(p) 1];
sys = tf(num,dem)
impulse(sys)
end
hold off