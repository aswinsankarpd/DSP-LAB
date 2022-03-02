clc;clf;clear;
x=input('enter sequence 1 ');
h=input('enter sequence 2 ');
m = max(length(x),length(h));
t=0:m-1;
newx = [x, zeros(1,m-length(x))];
newh = [h, zeros(1,m-length(h))];
hx=newh(:,$:-1:1);
fh=[];
for i=1:m
    hx=[hx($),hx(1:$-1)];
    fh=[fh;hx];
end

y=fh*x';
disp(y);
plot2d3(t,y);
title('Circular Convolution');
xlabel('Sample');
ylabel('Amplitude');
a=gca()
a.x_location ="origin";
a.y_location ="origin";

