clc;clf;clear;
X1=[1,2,3,4];
Y1=[2,1,2,1];
x=fft(X1);
y=fft(Y1);
N=4
m = max(length(x),length(y));
newx = [x, zeros(1,m-length(x))];
newy = [y, zeros(1,m-length(y))];
a=fft(newx);
b=fft(newy);
c=a.*b;
d=ifft(c);
disp(d/4);
e=fft(X1.*Y1);
disp(e);
