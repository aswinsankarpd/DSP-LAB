// concentric 
clc;
clear;

x = [1,2,3,4];
h = [1,2];

m = length(x);
n = length(h);
op_length = max(m,n);

newx = [x,zeros(1,op_length-m)];
newh = [h,zeros(1,op_length-n)];

newx = newx($:-1:1);
output = [];
for i=0:op_length-1
    newx = [newx($),newx(1:1:$-1)];
    output = [output,sum(newh.*newx)];
end

disp(output)
