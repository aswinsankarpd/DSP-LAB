x=[1,2,3,4];//Input
y=fft(x,-1);//Computing DFT
disp(y);
z=fft(y,1);//Computing IDFT
disp(z);

