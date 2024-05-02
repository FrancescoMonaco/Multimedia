%spectral analysis by means of Fast Fourier Transform
close all
clear variables

%% read file, plot waveform and play it
filename = '../audio_samples/sine.wav';
[y, fs]=audioread(filename);
fprintf('fs = %d\n',fs)

figure(1)
plot(y)

sound(y,fs)
pause(1)

%% plot spectrum
Y=fft(y); %fft is computed on the entire lentgh of y
spectrum=abs(Y); %computed the module of the complex vector Y 
figure(2)
plot(spectrum,'.')

%% change the FFT length to 4800
Y=fft(y(1:4800)); %fft is computed on a window of 4800 samples %fft(y,4800)
spectrum4800=abs(Y);
figure(3)
plot(spectrum4800,'.')

%% leakage
Y1000=fft(y(1:1000));
spectrum1000=abs(Y1000);
figure(4)
plot(spectrum1000,'.')

%% zero padding
YZeroPad=fft(y(1:1000),48000); %fft is computed on 48000 samples
                               %zero values are added if the input vector is shorter 
spectrumZeroPad=abs(YZeroPad);
figure(5)
plot(spectrumZeroPad,'.')

%% plot spectrum of pluck.wav and estime the fundamental frequency


%% plot spectrum of chirp_example.wav and estime the fundamental frequency



