clc;
clear;

clc;
clear;

x = fft([1,2,3,4,5,6,7,8]);
j = sqrt(-1);
N = length(x);
for k=0:length(x)-1
    summ = 0;
    for n=0:length(x)-1
        summ = summ + x(n+1)*exp(j*2*%pi*n*k/N);
    end
    disp(round(summ)/8);       
end
