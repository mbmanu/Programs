Am = 5;
Ac = 5;
m = 1;
f = 10;
fc = 10*f;
F = 2000;
T = 1/F;

t = 0:T:1;

subplot(311);
mS = Am*sin(2*pi*f*t);
plot(t,mS);
title('message signal');

subplot(312);
cS = Ac*sin(2*pi*fc*t); 
plot(t,cS);
title('carrier signal'); 

subplot(313);
y = Ac + Am*(1+m*sin(2*pi*f*t)).*sin(2*pi*fc*t);
plot(t,y);
title('AM signal');