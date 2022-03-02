//parseval's theorem
clc;clf;clear;
x1=[1,2,3,4];
a=0;
for i=1:length(x1)
    a=a+abs(x1(i)**2)
end
disp(a);
X1=(fft(x1));
N=4;
b=0;
for i=1:length(X1)
    b=b+abs(X1(i)**2)
end
disp(b/N);

