clc;
clear;
x = [1,2,3,4];
h= [1,2];

m = length(x);
n = length(h);

op_length = max(m,n);
newx = [x,zeros(1,op_length-m)];
newh = [h,zeros(1,op_length-n)];

conv_matrix = [];

for k = 0:op_length-1
    conv_matrix = [conv_matrix;newx];
    newx = [newx($),newx(1:1:$-1)];
     
end

disp(conv_matrix'*newh');
