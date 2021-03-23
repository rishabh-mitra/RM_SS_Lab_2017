clc;clear all;
t = 0:.001:.1;
y = 3*cos(2*pi*50*t);
fc = input('Enter the sampling frequency in Hz: ');
tc = 1/fc;
tt = 0:tc:0.1;
m = max(size(tt));

%Extract sample values
d = 1e-6;
yy = 3*cos(2*pi*50*tt);
t1(1) = tt(1);
y1(1) = yy(1);
t1(2) = tt(1)+d;
y1(2) = 0;
indx = 3;

for i=2:m
    t1(indx) = tt(i)-d;
    y1(indx) = 0;
    t1(indx+1) = tt(i);
    y1(indx+1) = yy(i);
    t1(indx+2) = tt(i)+d;
    y1(indx+2) = 0;
    indx = indx+3;
end

figure,plot(t,y,t1,y1,tt,yy),grid
xlabel('Time (s)')
title('Signal & it`s samples ')

disp('Strike any key to continue')
pause

indx = 3;
ts(1) = tt(1);
sa(1) = yy(1);
ts(2) = tt(2);
sa(2) = yy(1);

for i=2:m-1
    ts(indx) = tt(i);
    sa(indx) = yy(i);
    ts(indx+1) = tt(i+1);
    sa(indx+1) = yy(i);
    indx = indx+2;
end

figure,plot(t,y,ts,sa),grid
xlabel('Time (s) ')
title('Signal and Zero-order hold')