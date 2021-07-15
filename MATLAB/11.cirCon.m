clc;clear all; close all;
x = [2 1 2 1];
h = [1 2 3 4];
m = length(x);
n = length(h);
N = max(m,n);

x = [x,zeros(1,N-m)];
h = [h,zeros(1,N-n)];
for n = 1:N
  Y(n) = 0;
  for i=1:N
    j = n-i+1
    if(j<=0)
    j=N+j;
  end
  Y(n) = [Y(n)+x(i)*h(j)];
  endfor
endfor
n = 0:N-1;
disp(Y);
stem(n,Y);
