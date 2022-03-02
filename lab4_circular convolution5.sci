clc;
clear;
clf;

x = input("Enter First Sequence = ");
h = input("Enter Second Sequence = ");

//x=[1 2 3 1];
//h=[1,2,1,-1];
y=conv(x,h);
ln= length(y);
m = max(length(x),length(h));
t = 0:m-1;
e = ln - m;
for i=1:e
    y(i)=y(ln-e+i)+y(i);
end
y=[y(1:$-e)];
disp(y);
plot2d3(t,y);
title('Circular convolution using Linear Convolution');
xlabel('Sample');
ylabel('Amplitude');
a=gca()
a.x_location ="origin";
a.y_location ="origin";
