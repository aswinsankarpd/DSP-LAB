clc;
clear;
x = [3 -1 0 1 3 2 0 1 2 1];
m = length(x);
h = [1 1 1];
l = length(h);
N = m+l-1;
h1 = [h,zeros(1,N-m)];
n3 = length(h1);
H = fft(h1);
x1 = [zeros(1,n3-l),x,zeros(1,n3)];
y = zeros(1,N);
for i=1:l:N
    y1 = x1(i:i+2*(n3-l));
    y2 = fft(y1);
    y3 = y2.*H;
    y4 = round(ifft(y3));
    y(i:i+n3-l) = y4(l:n3);
end
