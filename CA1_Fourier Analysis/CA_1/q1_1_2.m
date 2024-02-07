fs=100;
t=-2*pi:1/fs:2*pi;
x=(t+1).*sin(1./t);
plot(t,x,"m","LineWidth",2);
xlabel("Horizontal axis");
ylabel("Vertical axis");
xlim([-2*pi 2*pi]);
ylim([-2 2]);
title("Q1-1-2",'interpreter','latex');
grid on