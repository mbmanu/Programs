t=0:0.0001:1;
fm=4;
m=[ones(1,900) zeros(1,1500) ones(1,1000) zeros(1,1500) ones(1,1000) zeros(1,1500) ones(1,2601)];
subplot(4,1,1);
plot(t,m);
axis([0 1 0 1.5])
title('modulating signal');
xlabel('time'); ylabel('amplitude');
fc1=50;
fc2=150;
c1=4*sin(2*pi*fc1*t);
c2=4*sin(2*pi*fc2*t);
subplot(4,1,2);plot(t,c1);
title('carrier signal 1');xlabel('time');ylabel('amplitude');
subplot(4,1,3);plot(t,c2);title('carrier signal 2');
xlabel('time');ylabel('amplitude');
for i=1:length(m)
    if m(i)==0
        fsk(i)=c1(i);
    else
        fsk(i)=c2(i);
    end
end
subplot(4,1,4);
plot(t,fsk);
title('FSK signal');
xlabel('time');ylabel('amplitude');