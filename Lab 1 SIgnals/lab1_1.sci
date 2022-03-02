clc;
clear all;
clf;

t =-2:2;
unit_impulse=[zeros(1,2),1,zeros(1,2)];
subplot(2,3,1);
plot2d3(t,unit_impulse);
title('Unit Impulse');
xlabel('Time');
ylabel('Amplitude');

t = linspace(0,10,50);
subplot(2,3,2);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
unit_pulse=sqrt(squarewave(t));
plot(t,unit_pulse,'b-.');
plot2d3(t,unit_pulse);
title('Unit Pulse');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

t=0:5;
subplot(2,3,3);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot(t,t,'b-.');
plot2d3(t,t);
title('Unit Ramp');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

t = linspace(0,10,50);
subplot(2,3,4);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
bipolar_pulse=squarewave(t);
plot(t,bipolar_pulse,'b-.');
plot2d3(t,bipolar_pulse);
title('Bipolar Pulse');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

t =0:( %pi /4) :(4* %pi ) ;
y = sin ( 2*t ) ;
subplot(2,3,5);
a=gca()
a.x_location ="origin";
a.y_location ="origin";
plot (t ,y,'b-.'); 
plot2d3(t,y);
title('Triangular Wave');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");

t=0:4;
y=ones(1,5);
subplot(2,3,6);
plot (t ,y,'b-.'); 
plot2d3 (t,y);
title('Unit Step');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous Signal','Discrete Signlal',opt="lr");



