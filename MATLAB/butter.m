clc;clear all; close all;
ap = 3; as = 15;
fp = 500; fs = 750;
f = 2000; %sampling frequency
wp = 2*pi*(fp/f);
ws = 2*pi*(fs/f);

[n,wn] = buttord(wp,ws,ap,as,'s');

[b,a] = butter(n,wn,'low','s');
freqz(b,a,500);
t=1;
[num,den] = bilinear(b,a,t);
freqz(num,den,500);

