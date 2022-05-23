clc
clear all
close all
%Name:Momtahin Ahammed
%Id:19-40698-1
%A=1,B=9,C=4,D=0,E=6,F=9,G=8,H=1
%HF=91
%HEG=168=fc
HF=91;
fc=168;
fs=20*168;
T=(1/fs);
t=-T:T/20:2*T;
x1 = HF* sin((2 * pi* fs*t) + (pi/4));
subplot (3,1,1)
plot (t, x1) 
xlabel ('(t)'); 
ylabel ('(x1)'); 
title ('x1= HF* sin ((2 * pi* fc* t) + (pi/4)')
grid on;

%HF/2=(91/2)=45.5
T=(1/fc)
t=-T:T/20:2*T;
x2 = (HF/2)* sin((2 * pi *2* fc*t) + (pi/4));
subplot (3,1,2) 
plot (t,x2)
xlabel ('(t)'); 
ylabel ('(x2)');
title ('x1= HF/2* sin ((2 * pi* 2*fc* t) + (pi/4)')
x3 = x1 + x2;
subplot (3,1,3) 
plot(t,x3)
title('Signals of the different Frequencies'); 
xlabel('Time t(s)');
ylabel('Amplitued of x3(V)');
grid on;
fx3 = fft(x3);
fx3 = fftshift(fx3)/(fs/2);
f = fs/2*linspace(-1,1,size(t,2));
figure;
plot(f, abs(fx3),'LineWidth',1.5);
title('magnitude FFT of sine');
axis([-3000 1000 0 4000])
xlabel('Frequency (Hz)');
ylabel('magnitude');
bandwidth = obw(x3,fs)
step=39.6;
codebook = linspace(-99,99,6);
partition = [-99+(39.6/2):39.6:99-(39.6/2)];
[index,quants] = quantiz(x3,partition,codebook); 
figure;
plot(t,x3,'-',t,quants,'-')
grid on;
legend('Original signal','Quantized signal');