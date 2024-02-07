Num=input('Number of fourier series sentence:');
P=input('Periodicity:');
alpha=input('power:');
syms x
Nshow=input('number of sentence that we want:');
[yshow,y]=fourier_series(Num,P,alpha,Nshow);
disp(yshow);

function [yshow,y]=fourier_series(Num,P,alpha,Nshow)
    syms x
f=x.^alpha;
sum=0;sum1=0;l=P/2;
A=(1/(2*l))*int(f,x,-l,l);
for n=1:Num
    an=(1/l)*int(f*cos(n*pi*x/l),x,-l,l);
    bn=(1/l)*int(f*sin(n*pi*x/l),x,-l,l);
    sum=sum+an*cos(n*pi*x/l)+bn*sin(n*pi*x/l);
    if n==Nshow
        sum1=sum;
    end
end
yshow=A+sum1;
y=A+sum;
end