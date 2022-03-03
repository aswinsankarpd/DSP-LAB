clc;
clear;

x = [1,2,3,4];
h = [1,-1,1,-1];
conv_sum = 0;
output = [];

x1 = x($:-1:1);
for k=1:length(x)
    x1 = [x1($),x1(1:$-1)];
    conv_sum = sum(x1.*h);
    output = [output,conv_sum];
end
output
