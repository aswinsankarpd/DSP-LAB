clc;
clear;
clf;
fc=250;
fs=2000;
m=5; //order 
wc=2*fc/fs ; //normalisation
disp(wc);
[wft,wfm,fr]=wfir("lp",m,[wc/2,0],"re",[0,0]);
disp(wft); //display h(n)
subplot(2,2,1);
plot(2*fr,20*log10(wfm)); //fr is wn values and wfm are h values
xlabel("Normalised Digital Frequency w * pi");
ylabel("Magnitude |H(w)| =");
title('Magnitude Response of LPF');
subplot(2,2,2);
plot(fr*fs,wfm);
xlabel('Analog Frequency in hz f');
ylabel('Magnitude |H(w)|=');
title('Magnitude Response of FIR LPF');