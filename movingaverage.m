data=importdata('fun3_2removed.txt');
x=data(:,2);
fs=512; 
N=length(x);
X=fft(x); 
freqHz = (0:1:(N/2)-1);

mag=abs(X);

%subplot(2,1,1); 

%plot(x,'b');
%subplot(2,1,1)
plot([0:1:(N/2)-1]*(fs/N),mag(1:N/2));
%y=bandpass(x,[8 12],512);
%r=fft(y);
%p=abs(r);
%o=p(1:N/2);


%M=input('desigred length of the filter=');
M=3;
num=ones(1,M);
hh=filter(num,1,x)/M;
%subplot(2,1,2); 
%hold on;
%figure;
%plot(hh,'r');



%subplot(2,1,2)
%plot(o);
%k=ifft(r);
%plot(X);
%plot(freqHz,p);
%plot([0:1:(N/2)-1]*(fs/N),p(1:N/2));





  