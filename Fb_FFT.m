function Fb_FFT(y,Fs)
%�ú������������룬���ź�ֵ�����Ƶ��
%�ú���ֻ��һ��ͼ������plot
t_s = 1/Fs; %��������
t_start = 0;
t_end = (length(y)-1)*t_s;
t = 0 : t_s : t_end;
Druation = t_end -t_start;  %�������ʱ��
Sampling_points = Druation/t_s +1;  %����������fft��ĵ������������
nfft = Sampling_points;
% t_s = 0.01; %��������
% t_start = 0.5; %��ʼʱ��
% t_end = 5;     %����ʱ��
% t = t_start : t_s : t_end;
%y = 1.5*sin(2*pi*5*t)+3*sin(2*pi*20*t)+randn(1,length(t));  %�����ź�
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Ƶ��%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y_f = fft(y,nfft); %����Ҷ�任

f_s = 1/t_s; %����Ƶ��
f_x = 0:f_s/(Sampling_points -1):f_s;  %ע������ͺ�����Ƶ�ʶ�Ӧ���ˣ�Ƶ�ʷֱ��ʾ���f_s/(Sampling_points -1)
plot(f_x(1:length(f_x)/2),2/Sampling_points*abs(y_f(1:length(f_x)/2)),'k');
%title('fft');  %ֱ�ӽ�ȡfft�����ǰ�벿��