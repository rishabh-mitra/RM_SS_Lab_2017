clc;clear all;
dem = [1 -.77];
num = [.77 -1];
figure,zplane(num,dem)
title('Z-Plane')
figure,impz(num,dem,20)
title('Impulse Response')
figure,freqz(num,dem,64)
title('Frequency Response')