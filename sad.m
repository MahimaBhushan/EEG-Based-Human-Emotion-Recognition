
data=importdata('vinsad3.txt');


fs=512; 
N=length(x);
X=fft(x); 
freqHz = (0:1:(N/2)-1);

mag=abs(X);

 

%subplot(2,1,1)
%plot([0:1:(N/2)-1]*(fs/N),mag(1:N/2));
y=bandpass(x,[8 12],512);
r=fft(y);
p=abs(r);
o=p(1:N/2);
plot(data);
%subplot(2,1,2)
%plot(o);
%k=ifft(r);
%plot(k);
%plot(freqHz,p);
%plot([0:1:(N/2)-1]*(fs/N),p(1:N/2));
