fc = 100;
fp = 10;
amp = 3;
t=0:0.001:1; 
c=amp.*sin(2*pi*fc*t);
subplot(3,1,1) 
plot(t,c)
xlabel('Time')
ylabel('Amplitude')
title('Carrier Wave')
m=amp/2.*square(2*pi*fp*t)+(amp/2);
subplot(3,1,2) 
plot(t,m)
xlabel('Time')
ylabel('Amplitude')
title('Binary Message Pulses')
w=c.*m;
subplot(3,1,3)
plot(t,w)
xlabel('Time')
ylabel('Amplitude')
title('Amplitide Shift Keyed Signal')