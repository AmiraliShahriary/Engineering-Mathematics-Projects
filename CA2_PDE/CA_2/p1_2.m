N=200;
x=linspace(0,1,100);
t=linspace(0,10,101);
m=0;
sol= pdepe(m,@heatpde,@heatIC,@heatBC,x,t);
colormap hot;
imagesc(x,t,sol(:,:,1));
colorbar;
xlabel('Distance x','interpreter','latex');
ylabel('Time t','interpreter','latex');
title('Heat Equation ');
figure;
surf(x,t,sol(:,:,1));
colormap hot;
figure;
t1=sol(1,:);
plot(x,t1,"b","LineWidth",2);
hold on;
t5=sol(51,:);
plot(x,t5,"r","LineWidth",2);
hold on ;
t10=sol(101,:);
plot(x,t10,"k","LineWidth",2);
legend("t=0","t=5","t=10");


function [c,f,s]=heatpde(x,t,u,dudx)
c=50;
f=dudx;
s=0;
end
function value=heatIC(x)
value=2*exp(x);
end
function [pl,ql,pr,qr]=heatBC(xl,ul,xr,ur,t)
pl=ul;
ql=0;
pr=ur-35;
qr=0;
end

