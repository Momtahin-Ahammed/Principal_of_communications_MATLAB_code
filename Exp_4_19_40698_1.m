clc
clear all
close all
%Id:19-40698-1
%Name:Momtahin Ahammed
A1 = 19; 
A2 = 19; 
s = 11; 
C = 4; 
G = 8; 
L = 2; 
fs = 48e3; 
t = 0:1/fs:1-1/fs; 
powfund = A1^2/2; 
varnoise = s^2; 
powharm = A2^2/2; 
powfund = A1^2/2; 
varnoise = s^2; 
powharm = A2^2/2; 
x= A1*sin(2*pi*(C*100)*t )+ A2*cos(2*pi*(G*100)*t)+s*randn(size(t)); 
bandwidth = abs( G*100 - C*100 ) 
defSNR = 10*log10(powfund/varnoise) 
C = bandwidth*log2(1+defSNR) 
BitRate = 2*bandwidth*log2(L) 
bitrate = 581.0210; 
L = 2^(bitrate/(2*bandwidth))
