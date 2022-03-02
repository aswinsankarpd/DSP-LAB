clc;clf;clear;
x1=[1,2,3,4];
x2=[2,1,2,1];
a1=2;
a2=3;
//linearity property
z=fft(a1*x1+a2*x2);
disp(z);
y=(a1*fft(x1)+a2*fft(x2));
disp(y);
if z==y
    disp("true");
else
    disp("false");
end
