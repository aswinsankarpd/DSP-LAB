clc;clf;clear;
x=input('enter sequence 1 ');
m=length(x);
h=input('enter sequence 2 ');
z = length(h);
l=input('enter block length ');
i=1;
n=m;
while modulo(n,l)~=0
    x(n+1)=0;
    n=n+1;
end
block(1:z-1)=[zeros(1,z-1)]
while i<=length(x)
    block(i+z-1:i+z+l-2)=x(i:i+l-1); 
    newh =[h,zeros(1,l-1)];
    newx=[block(i:i+z-2),block(i+z-1:i+z+l-2)]
    
    a=fft(newx);
    b=fft(newh);
    c=a.*b;
    d=round(ifft(c));
    ans(i:i+l-1)=d(z:z+l-1);
    i=i+l;

end
disp(ans(1:m+z-1));
