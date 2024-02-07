clc;
clear;
[y,Fs]=audioread('ABITW.mp3');
 %sound(y,Fs);
Fs;
Fs1 = 2*Fs;
audiowrite("ABITW_Fs1.wav",y,Fs1);
%sound(y,Fs1);
Fs2 = Fs/2;
audiowrite("ABITW_Fs2.wav",y,Fs2);
Fs2