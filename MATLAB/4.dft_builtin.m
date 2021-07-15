clc;close all;clear all;
x = input('Enter the sequence');
n = input('number of dft points');
X = fft(x,n);
w = 0:1:n-1;

subplot(2,1,1);
y = abs(X);
stem(w,y);
grid on;
title('magnitude');

subplot(2,1,2);
h = angle(X);
stem(w,h);
grid on;
title('phase');