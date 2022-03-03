clc;
clear;

//inputs
x = [1,2,3,4];
h = [1,-1];

//Starting Position
a = 0;
b = -1;

//time arrays

ta = a:a+length(x)-1;
tb = b:b+length(h)-1;
t = (min(ta)+min(tb)):(max(ta)+max(tb));

//Convolution
m = length ( x ) ;
n = length ( h ) ;
y=[];
for i = 1: n +m -1
    conv_sum = 0;
    for j = 1: i
        if ((( i - j +1) <= n ) &( j <= m ) )
            conv_sum = conv_sum + x ( j ) * h (i -j +1) ;
        end ;
        y ( i ) = conv_sum ;
    end ;
end ;
disp(y')
