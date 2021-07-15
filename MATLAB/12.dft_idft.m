% DFT program without function
clc;close all;clear all;
x=input('Enter the sequence x= ');
N=input('Enter the length of the DFT N= ');
len=length(x);
if N>len
    x=[x zeros(1,N-len)];
elseif N<len
    x=x(1:N);
end
i=sqrt(-1);
w=exp(-i*2*pi/N);
n=0:(N-1);
k=0:(N-1);
nk=n'*k;
W=w.^nk;
X=x*W;
disp(X);
subplot(211);
stem(k,abs(X));
grid on;
title('Magnitude Spectrum');
subplot(212);
stem(k,angle(X));
title('Phase Spectrum');
grid on;

w1 = exp(i*2*pi/N);
n=0:N-1;
k=0:N-1;
nk=n'*k;
W1=w1.^nk;
X1=(X*W1)/N;
disp("IDFT");
disp(X1);


