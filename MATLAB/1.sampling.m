clc; clear all; close all;
f = 100;
t = 0:0.01:0.1;
fs = 1.5*f;
ts = 1/fs;
tn = 0:ts:0.1;
x1 = cos(2*pi*f*tn);
subplot(3,1,1);plot(tn,x1);
title('Under');

fs = 2*f;
ts = 1/fs;
tn = 0:ts:0.1;
x1 = cos(2*pi*f*tn);
subplot(3,1,2);plot(tn,x1);
title('critical');


fs = 6*f;
ts = 1/fs;
tn = 0:ts:0.1;
x1 = cos(2*pi*f*tn);
subplot(3,1,3);plot(tn,x1);
title('over');