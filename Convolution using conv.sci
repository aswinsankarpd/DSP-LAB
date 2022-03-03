clc;
clear;
clf;

//Input Sequences
x = [1,2,3,4];
h = [1,-1,0];

//Starting Position
a = 0;
b = -1;

//Time array;
ta = a:a+length(x)-1;
th = b:b+length(h)-1;
t = (min(ta)+min(th)):(max(ta)+max(th));

output = conv(x,h);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
subplot(2,2,1);
plot2d3(ta,x);
subplot(2,2,2);
plot2d3(th,h);
subplot(2,2,3);
plot2d3(t,output);

disp(output)
