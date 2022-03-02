clc;
clear all;
clf;

t=0:0.1:3;
x=t^2;
subplot(2,3,1);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot (t ,x,'b-.');
plot2d3 (t ,x );
title("Parabolic Function");
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

t=[0:0.001:10]';
x=sin(t);
b=(1/3)*sin(t*3);
c=(1/5)*sin(t*5);
d=(1/7)*sin(t*7);
e=(1/9)*sin(t*9);
y=x+b+c+d+e;

subplot(2,3,2);
xlabel("sinx");
ylabel("t")
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
legend("Given Signal");

