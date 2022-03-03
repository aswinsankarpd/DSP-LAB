clc;
clear;

x = [1,2,3,4];
lhs = 0;
for n=1:length(x)
    lhs = lhs + abs(x(n))**2;
end

y = fft(x);
rhs = 0;
for n=1:length(y)
    rhs = rhs + abs(y(n))**2;
end

disp(lhs,rhs/length(y))
