fs = 100;  %����Ƶ��
t = 0:1/fs:10;
x = sin(20*pi*t);
y = 2*sin(1*pi*t);
sig = x+y;
PlotEMDandFFT(sig,fs);  %�ú�����Դ���ȡ��ʽ��"����˵��.docx"

% ���ں����� function imf = PlotEMDandFFT(y,Fs)
% �ź�EMD�ֽ����IMF����Ƶ�׶���ͼ
% ���룺
% yΪ���ֽ��ź�
% FsΪ����Ƶ��
% �����
% imfΪ��emd�ֽ��ĸ�imf����ֵ����ֵ��ֱ�ӵ���emd�������ص���ֵ��ͬ