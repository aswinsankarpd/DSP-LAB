clc;
clear;

j = sqrt(-1);
i = j;
x = [20. + 0*i  -5.8284271 - 2.4142136*i   0. + 0*i -0.1715729 - 0.4142136*i   0. + 0*i  -0.1715729 + 0.4142136*i 0. + 0.*i  -5.8284271 + 2.4142136*i];

N = length(x);

w = exp(-j*2*%pi*1/N);

wn1 = w**1
wn2 = w**2;
wn3 = w**3;

x0 = x(1);
x1 = x(2);
x2 = x(3);
x3 = x(4);
x4 = x(5);
x5 = x(6);
x6 = x(7);
x7 = x(8);

//stage 1
xa0 = x0+x4;
xa4 = x0-x4;
xa2 = x2+x6;
xa6 = x2-x6;
xa1 = x1+x5;
xa5 = x1-x5;
xa3 = x3+x7;
xa7 = x3-x7;

//stage2
xb0 = xa0+xa2;
xb4 = xa4+xa6*wn2
xb2 = xa0-xa2;
xb6 = xa4-wn2*xa6;
xb1 = xa1+xa3
xb3 = xa1-xa3;
xb5 = xa5+xa7*wn2;
xb7 = xa5-xa7*wn2;

//stage3
xc0 = xb0+xb1;
xc4 = xb4+xb5*wn1;
xc2 = xb2+xb3*wn2;
xc6 = xb6+xb7*wn3;
xc1 = xb0-xb1;
xc5 = xb4-xb5*wn1;
xc3 = xb2-xb3*wn2;
xc7 = xb6-xb7*wn3;

output = [xc0,xc4,xc2,xc6,xc1,xc5,xc3,xc7]/8;
disp(output);
