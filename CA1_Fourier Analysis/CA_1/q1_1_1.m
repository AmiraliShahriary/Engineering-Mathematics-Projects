fs=100;
t= -2*pi:1/fs:2*pi;
x=cos(pi*t/4).*sin(pi*t/8);
plot(t,x,"c","LineWidth",2);
xlabel('Horizontal axis');
ylabel('Vertical axis');
xlim([-2*pi 2*pi]);
ylim([-1 1]);
title("Q1_1_1",'interpreter','latex');
grid on