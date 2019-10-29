function Fb_FFT(y,Fs)
%该函数有两个输入，即信号值与采样频率
%该函数只花一张图，内置plot
t_s = 1/Fs; %采样周期
t_start = 0;
t_end = (length(y)-1)*t_s;
t = 0 : t_s : t_end;
Druation = t_end -t_start;  %计算采样时间
Sampling_points = Druation/t_s +1;  %采样点数，fft后的点数就是这个数
nfft = Sampling_points;
% t_s = 0.01; %采样周期
% t_start = 0.5; %起始时间
% t_end = 5;     %结束时间
% t = t_start : t_s : t_end;
%y = 1.5*sin(2*pi*5*t)+3*sin(2*pi*20*t)+randn(1,length(t));  %生成信号
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%频谱%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y_f = fft(y,nfft); %傅里叶变换

f_s = 1/t_s; %采样频率
f_x = 0:f_s/(Sampling_points -1):f_s;  %注意这里和横坐标频率对应上了，频率分辨率就是f_s/(Sampling_points -1)
plot(f_x(1:length(f_x)/2),2/Sampling_points*abs(y_f(1:length(f_x)/2)),'k');
%title('fft');  %直接截取fft结果的前半部分