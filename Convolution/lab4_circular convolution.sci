clc;clf;clear;
x=input('enter first sequence :');
h1=input('enter second sequence :');
m = max(length(x),length(h1));
newx = [x, zeros(1,m-length(x))];
newh1 = [h1, zeros(1,m-length(h1))];
t=0:m-1;
newx=newx(:,$:-1:1);
for i=1:m
   newx=[newx($),newx(1:$-1)];
   y(i)=sum(newx.*newh1);
end;
disp(y);
plot2d3(t,y);
title('Circular Convolution');
xlabel('Sample');
ylabel('Amplitude');
a=gca()
a.x_location ="origin";
a.y_location ="origin";


