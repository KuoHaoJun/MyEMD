fs = 100;  %²ÉÑùÆµÂÊ
t = 0:1/fs:10;
x = sin(20*pi*t);
y = 2*sin(1*pi*t);
sig = x+y;
plot(sig)
PlotEMDandFFT(sig,fs)