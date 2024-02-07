
fs=100;
num=5;
p=2*pi;
a=2;
nshow=5;

fourier_series(num,p,a,nshow);
function fourier_series(Num,P,alpha,Nshow)
    syms x;
    digits(3);  
    f = x^alpha;
    a = -P/2;
    b = P/2;    
    a0 = (2/P)*(int(f,a,b));
    a0 = vpa(a0,3);
    Fx = a0/2;
for n=1:Num
    %definition of an(n) & bn(n)
    an(n)=(2/P)*(int(f*cos(2*n*pi*x/P),a,b));
	bn(n)=(2/P)*(int(f*sin(2*n*pi*x/P),a,b));
	an(n)=vpa(an(n),3);
    bn(n)=vpa(bn(n),3);
	Fx=Fx+((an(n))*cos(2*n*pi*x/P))+((bn(n))*sin(2*n*pi*x/P));		
end
fprintf("%s",char(a0/2));
for n=1:Nshow
    fprintf(" + %s",char(((an(n))*cos(2*n*pi*x/P))+((bn(n))*sin(2*n*pi*x/P))));
    end
end