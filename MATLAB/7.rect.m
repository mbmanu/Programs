clc; clear all; close all;
N = 40;
fc = 700;
fs = 2000;
wc = fc/fs;
w = rectwin(N);
b = fir1(N-1,wc,w);
freqz(b);