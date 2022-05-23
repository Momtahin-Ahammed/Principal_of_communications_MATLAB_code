clc
clear all
close all
%Id:19-40698-1
%Name:Momtahin Ahammed

clear all
close all
clc
fs=100e3;% sampling frequency
fc=4e3;% frequency of the signal
t=0,1/fs;0.001;%discrete time
Am=4;
x= Am*sin 2*pi*fc*t;% discrete signal
%--------Quantization------------%
n=8;
L=2^n-1;
DELTA=(max(x)-min(x))/L;
xq=min(x)+(round((x-min(x))/delta)).*delta;
%--------END------------%
figr(1)
plt(t,xq,r--o)