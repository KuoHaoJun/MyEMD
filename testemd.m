fs = 100;  %采样频率
t = 0:1/fs:10;
x = sin(20*pi*t);
y = 2*sin(1*pi*t);
sig = x+y;
PlotEMDandFFT(sig,fs);  %该函数的源码获取方式见"代码说明.docx"

% 关于函数： function imf = PlotEMDandFFT(y,Fs)
% 信号EMD分解与各IMF分量频谱对照图
% 输入：
% y为待分解信号
% Fs为采样频率
% 输出：
% imf为经emd分解后的各imf分量值，该值与直接调用emd函数返回的数值相同