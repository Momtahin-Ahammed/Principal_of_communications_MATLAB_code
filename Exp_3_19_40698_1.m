clc
clear all
close all
%Id:19-40698-1
%Name:Momtahin Ahammed
A1=99;
fc=40600;
fs=20*fc;
t=0:1/fs:0.0001;
xq3_2v=3.2;
x=A1*sin(2*pi*fc*t);
n=4; 
Qlevel=(2^n)
L=(2^n)-1;
delta=(max(x)-min(x))/L;
StepSize=delta
index=round((x-min(x))/delta);
xq3_2=min(x)+round((xq3_2v-min(x))/delta).*delta
xq=min(x)+index.*delta;
stem(t,x,'R');
subplot(2,1,1);% breaking the window figure to plot both graphs
stem(t,x,'b')% plot of discrete time signaltitle('Discrete time representation')
% title of the figure
grid on
xlabel('time(s)')
ylabel('X[n]')
subplot(2,1,2);
plot(t,x,'r')
hold on;
stairs(t,xq,'b');% the quantized output
grid on