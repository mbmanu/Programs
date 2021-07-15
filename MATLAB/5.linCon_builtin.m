clc;clear all; close all;
x = input('Enter 1');
h = input('Enter 2');
y = conv(x,h);
disp(y);
subplot(3,1,1);
n = 0:length(x)-1;
stem(n,x);
title('x(n)');

subplot(3,1,2);
n = 0:length(h)-1;
stem(n,h);
title('h(n)');

subplot(3,1,3);
n = 0:length(y)-1;
stem(n,y);
title('y(n)');