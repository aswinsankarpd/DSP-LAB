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

for i=0:op_length-1
    conv_sum = 0;
    for j=0:i
        conv_sum = conv_sum + newx(j+1)*newh(i-j+1);
    end
    output = [output,conv_sum];    
end

disp(output);
