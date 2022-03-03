clc;
clear;

x = [1,2,3,4];
h = [1,2];

m = length(x);
n = length(h);
op_length = max(m,n);

newx = [x,zeros(1,op_length-m)];
newh = [h,zeros(1,op_length-n)];
output = [];

for i=0:op_length-1
    summ = 0;
    for j = 0:i
        summ = summ + newx(j+1)*newh(i-j+1);
    end
    output = [output,summ];
end

disp(output);
