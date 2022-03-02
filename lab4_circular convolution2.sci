clc;clf;clear;
x=input('enter sequence 1 ');
y=input('enter sequence 2 ');
m = max(length(x),length(y));
t=0:m-1;
newx = [x, zeros(1,m-length(x))];
newy = [y, zeros(1,m-length(y))];
a=fft(newx);
b=fft(newy);
c=a.*b;
d=ifft(c);
disp(d);
plot2d3(t,d);
title('Circular Convolution');
xlabel('Sample');
ylabel('Amplitude');
a=gca()
a.x_location ="origin";
a.y_location ="origin";

