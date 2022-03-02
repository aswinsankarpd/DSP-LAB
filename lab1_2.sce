clc;
clear all;
clf;

t = -2:0.1:2;
x = exp (t ) ;
subplot(2,3,1);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot (t ,x,'b-.');
plot2d3 (t ,x );
title('Exponential');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

f =0.2;
t =0:0.1:10;
x = sin (2* %pi * t * f ) ;
subplot(2,3,2);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot (t ,x,'b-.');
plot2d3 (t ,x );
title('Sinusoidal');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

f =0.2;
t =0:0.1:10;
x = cos (2* %pi * t * f ) ;
subplot(2,3,3);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot (t ,x,'b-.');
plot2d3 (t ,x );
title('Cosine Signal');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

t=linspace(0,10,1000);
duty=0.3;
u=squarewave(t);
v=squarewave(t,30);
subplot(2,3,4);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
bipolar_pulse=squarewave(t);
plot(t,u,'b-.');
plot(t,v);
title("Square Wave");
xlabel('Time');
ylabel('Amplitude');
legend('With Duty Cycle','Without Duty Cycle',opt="lr");

t = -10:0.5:10;
x = sinc ( t ) ;
subplot(2,3,5);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot (t ,x,'b-.'); 
plot2d3(t,x); 
title('Sinc Wave');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

t = -5:0.1:5
x = sign ( t ) ;
subplot(2,3,6);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot (t ,x,'b-.'); 
plot2d3(t,x);
title ('Signum') ;
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");
