%% Clear workspace
clc; clear; close all;
% Delete the files created at the previous iteration
if isfile("hello2.wav")
    delete hello2.wav
end

%% Load data and plot
[y,Fs]=audioread("audio_samples\pluck.wav");
figure(1)
subplot(2,1,1)
plot(y)
xlabel("Time []")
ylabel("Freq []")

%% Ex1
Ts = 1/Fs;
yBy2 = 2*y;
subplot(2,1,2)

%player = audioplayer(yBy2,Ts);
%playblocking(player)


%audiowrite("hello2.wav", yBy2, Fs, "BitsPerSample", 8, "Title", "Example")

%Distortion
yDist=min(y,0.02);
yDist=max(yDist, -0.02);
%plot(yDist)
sz = size(y);
Y= fft(y,sz(1));
semilogx(abs(Y(1:4800)))
%plot(abs(Y))



