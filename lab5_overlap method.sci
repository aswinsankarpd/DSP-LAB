clc;clf;clear;
x=input('enter sequence 1 ');
m=length(x);
h=input('enter sequence 2 ');
i=1;
x(length(x)+1:length(x)+1+5)=zeros(1,6);
block(1:3)=[zeros(1,3)]
while i<=length(x)
    block(i+3:i+8)=x(i:i+5); 
    newh =[h,zeros(1,5)];
    newx=[block(i:i+2),block(i+3:i+8)]
    
    a=fft(newx);
    b=fft(newh);
    c=a.*b;
    d=ifft(c);
    ans(i:i+5)=d(4:9);
    i=i+6;

end
disp(ans(1:m+length(h)-1));



