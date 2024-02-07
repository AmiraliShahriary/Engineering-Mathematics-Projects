fs = 1000;
f=-fs/2:1/4:fs/2;
t=-2:1/fs:2;
fx = cos(pi.*t);
FT = fft(fx);
FTS = fftshift(fft(fx));
plot(f,abs(FTS).*pi/2000,"m","LineWidth",2);
xlabel("Freq(Hz)");
ylabel("Magnitude");
