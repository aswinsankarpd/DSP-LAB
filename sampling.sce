clc;
clf;
clear;

fm = 100; //msg signal freq
k = 5; // number of cycles

t1 = 0:1/(fm*fm):k/fm;
y1 = sin(2*%pi*t1*fm);

a = gca();
a.x_location = "origin";
a.y_location = "origin";
subplot(2,2,1);
plot(t1,y1);

//Under Sampling

fs = 1.5*fm;
t2 = 0:1/(fs):k/fm;
y2 = sin(2*%pi*fm*t2);

a = gca();
a.x_location = "origin";
a.y_location = "origin";
subplot(2,2,2);
plot2d3(t2,y2);
plot(t2,y2);

//Nyquist Sampling

fs = 2*fm;
t3 = 0:1/(fs):k/fm;
y3 = sin(2*%pi*fm*t3);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
subplot(2,2,3);
plot2d3(t3,y3);
plot(t3,y3);

//Over Sampling

fs = 10*fm;
t4 = 0:1/(fs):k/fm;
y4 = sin(2*%pi*fm*t4);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
subplot(2,2,4);
plot2d3(t4,y4);
plot(t4,y4);
