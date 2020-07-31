
data=importdata('funny2.txt');

x=data(:,2);

N=length(x);
X=fft(x); 
freqHz = (0:1:N-1)*(fs/N);

mag=abs(X);

 

%subplot(2,1,1)
%plot([0:1:(N/2)-1]*(fs/N),mag(1:N/2));
y=bandpass(x,[8 12],512);
r=fft(y);
p=abs(r)
%subplot(2,1,2)
plot(y)
%plot([0:1:(N/2)-1]*(fs/N),p(1:N/2));
