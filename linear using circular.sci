clc;
clear;

x = [1,2,3,4];
h = [1,2];
m = length(x);
n = length(h);

op_length = m+n-1;

newx = [x,zeros(1,op_length-m)];
newh = [h,zeros(1,op_length-n)];

output = [];

newx = newx($:-1:1);

for k = 0:op_length-1
    newx = [newx($), newx(1:$-1)];
    output = [output, sum(newx.*newh)];
end

disp(output);
