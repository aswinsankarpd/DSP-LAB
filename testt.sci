clc;clear;
x=input('enter sequence 1 ');
m=length(x);
h=input('enter sequence 2 ');
z = length(h);
l=input('enter block length ');
N = z+m-1
y=zeros(1,2*N);
i=1;
n=m;
while modulo(n,l)~=0
    x(n+1)=0;
    n=n+1;
end
//x(length(x)+1:length(x)+1+5)=zeros(1,6);
//block(1:3)=[zeros(1,3)]
while i<=length(x)
    //block(i+3:i+8)=x(i:i+5); 
    newh =[h,zeros(1,l-1)];
    newx=[x(i:i+l-1),zeros(1,z-1)];
    
    a=fft(newx);
    b=fft(newh);
    c=a.*b;
    d=round(ifft(c));
    //ans(i:i+5)=d(4:9);
    nh=length(newh);
    y(i:i+nh-1)=y(i:i+nh-1)+d(1:nh)
    i=i+l;
    
end
disp(y(1:m+z-1));

