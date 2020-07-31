data=importdata('funny2.txt');
fs=512;
x=data(:,2);
subplot(5,1,1);

plot(x);
N=length(x);
X=fft(x); 
freqHz = (0:1:N-1);
mag=abs(X);
subplot(5,1,2);
plot(freqHz,mag);
subplot(5,1,3);

plot([0:1/(N/2-1):1],mag(1:N/2));
[b,a]=butter(2,0.04,'low');
h=freqz(b,a,floor(N/2));
subplot(5,1,4);
plot([0:1/(N/2-1):1],abs(h),'r');
fil=filter(b,a,x);
subplot(5,1,5);
plot(fil,'r');
 