fs=100;
syms t;
x = piecewise(t<-3,-1,-3<t<3,t,t>3,exp(-3*t));
fplot(t,x);
xlabel("Horizontal axis");
ylabel("Vertical axis");
title("Q1-1-3",'interpreter','latex');
grid on