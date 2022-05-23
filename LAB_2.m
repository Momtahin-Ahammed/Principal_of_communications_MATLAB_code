clc
clear all
close all
%Id:19-40698-1
%Name:Momtahin Ahammed
A1=80;
A2=19;
C=4;
F=9;
T=1/4069;
Fm=900;
Fs=20*Fm;
t=-T:T/(Fs):T-T/(Fs);
x1=A1*cos(2*pi*(4069)*t);
x2=A2*cos(2*pi*(4069)*t);
x3=x1+x2;
subplot(3,1,1)
plot(t,x1,'g:*')
xlabel("TIME (SEC)")
ylabel("AMPLITUDE")
title("x1(t)")
subplot(3,1,2)
plot(t,x2,'y:*')
xlabel("TIME (SEC)")
ylabel("AMPLITUDE")
title("x2(t)")
subplot(3,1,3)
plot(t,x3,'b:*')
xlabel("TIME (SEC)")
ylabel("AMPLITUDE")
title("x3(t) = x1(t) + x2(t)")
grid on;
fx3 = fft(x3);
fx3 = fftshift(fx3)/(Fs/2);
f = Fs/2*linspace(-1,1,size(t,2));
figure;
plot(f, abs(fx3),'LineWidth',1.5);
title('magnitude FFT of sine');
axis([-900 1000 0 500])
xlabel('Frequency (Hz)');
ylabel('magnitude');
bandwidth = obw(x3,Fs)
step=39.6;
codebook = linspace(-99,99,6);
partition = [-99+(39.6/2):39.6:99-(39.6/2)];
[index,quants] = quantiz(x3,partition,codebook); 
figure;
plot(t,x3,'-',t,quants,'-')
grid on;
legend('Original signal','Quantized signal');

