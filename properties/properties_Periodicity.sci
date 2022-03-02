clc;clf;clear;
x1=[1,2,3,4];
a=x1;
N=4;
X1=[];
for i=1:length(x1)
    x1(i+N)=x1(i)
    X1(i)=x1(i+N)
end
disp(fft(X1));
disp(fft(a));
