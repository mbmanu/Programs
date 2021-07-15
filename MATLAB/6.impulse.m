clc;clear all; close all;
t = 0:49;
h = impz(1,[1,-1/4],50);
stem(t,h);
title('Impulse')