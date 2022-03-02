clc;
clear;
clf;

x = input("Enter First Sequence = ");
h = input("Enter Second Sequence = ");
a=input("Enter the lower limit of x= ");
c=input("Enter the lower limit of h= ");

t1=a:a+length(x)-1;
t2=c:c+length(h)-1;
t3=(min(t1)+min(t2)):(max(t1)+max(t2));

//x=[1 2 3 1];
//h=[1,2,1,-1];
y=conv(x,h);

subplot(2,2,1);
plot2d3(t1,x);

title('First Sequence');
xlabel('Sample');
ylabel('Amplitude');
a=gca()
a.x_location="origin";
a.y_location="origin";

subplot(2,2,2);
plot2d3(t2,h);
title('Second Sequence');
xlabel('Sample');
ylabel('Amplitude');
a=gca()
a.x_location="origin";
a.y_location="origin";

subplot(2,2,3);
plot2d3(t3,y);
title('Convoluted Sequence');
xlabel('Sample');
ylabel('Amplitude');
a=gca()
a.x_location="origin";
a.y_location="origin";
