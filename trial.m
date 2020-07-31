data=importdata('fun3_2removed.txt');
x=data(:,2);
fs=512; 
N=length(x);
X=fft(x)
mag=abs(X);
plot(mag);

