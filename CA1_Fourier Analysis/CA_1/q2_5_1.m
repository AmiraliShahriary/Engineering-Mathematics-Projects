

x = [0 , pi/3 , 2*pi/3 , pi, 4*pi/3,5*pi/3,2*pi];
fx = [1 , 1.4 , 1.9 , 1.7 , 1.5 , 1.2 , 1];


Harmonic_Fs(x,fx);

function Harmonic_Fs(x,fx)
   syms t;
   a0 = 2*sum(fx)/7;
   Fx = a0/2;
   fprintf("%.4f  ",a0/2);
   for n=1:4
        an = @(n) 2*sum(fx.*cos(n*x))/n;
        bn = @(n) 2*sum(fx.*sin(n*x))/n;
        Fx=  Fx+((an(n))*cos(n*t))+((bn(n))*sin(n*t));	
        fprintf("%.4fcos(%dx)  ",an(n),n);
        fprintf("%.4fsin(%dx)  ",bn(n),n);
        fplot(Fx);      
   end
end
