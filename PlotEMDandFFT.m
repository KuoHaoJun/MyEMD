function imf = PlotEMDandFFT(y,Fs)
%����EMD��FFTͼ
%����fΪԭʼ�ź�
%FsΪ����Ƶ��
%y=y';
t = 1/Fs:1/Fs:length(y)/Fs;
imf = emd(y);
[~,hang]=size(imf);
figure('Name','');
subplot(size(imf,1)+1,2,1);
plot(t,y,'k');set(gca,'XTickLabel','','YTickLabel','');grid on;
title('EMD�ֽ�');
subplot(size(imf,1)+1,2,2);
Fb_FFT(y,Fs);set(gca,'XTickLabel','','YTickLabel','');grid on;
title('��ӦƵ��');
for i = 2:size(imf,1)+1
    subplot(size(imf,1)+1,2,i*2-1);
    plot(t,imf(i-1,:),'k');
    ylabel(['IMF',num2str(i-1)]);
    if (i == size(imf,1)+1)
        ylabel(['res']);
        xlabel('time');
    end
    grid on;
    subplot(size(imf,1)+1,2,i*2);
    Fb_FFT(imf(i-1,:),Fs);
    if (i == size(imf,1)+1)
        xlabel('frequency');
    end
    grid on;
end
