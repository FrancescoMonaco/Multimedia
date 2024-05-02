%set parameters and plot spectrogram
close all
clear variables

%% chirp spectrograms
filename = '..\audio_samples\chirp_example.wav';
[chirp, fs]=audioread("audio_samples\chirp_example.wav");
%sound(chirp,fs)
figure(1)
plot(chirp)
%pause(6)

%% 32 points fft
figure(2)
wLen = 2^5;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(chirp, wLen, nOverlap, fftSize, fs, 'yaxis');

%% 1024 points fft
figure(3)
wLen = 2^10;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(chirp, wLen, nOverlap, fftSize, fs, 'yaxis');

%% 32768 points fft
figure(4)
wLen = 2^15;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(chirp, wLen, nOverlap, fftSize, fs, 'yaxis');

%% pluck spectrogram
filename = '../audio_samples/pluck.wav';
[pluck, fs]=audioread(filename);

sound(pluck,fs)
figure(5)
plot(pluck)
pause(2)

%% 32 points fft
figure(6)
wLen = 2^5;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(pluck, wLen, nOverlap, fftSize, fs, 'yaxis');

%% 1024 points fft
figure(7)
wLen = 2^10;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(pluck, wLen, nOverlap, fftSize, fs, 'yaxis');

%% 16384 points fft
figure(8)
wLen = 2^14;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(pluck, wLen, nOverlap, fftSize, fs, 'yaxis');

%% drum spectrogram
filename = '../audio_samples/drums.wav';
[drum, fs]=audioread(filename);

sound(drum,fs)
figure(9)
plot(drum)
pause(5)

%% 16384 points fft
figure(10)
wLen = 2^14;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(drum, wLen, nOverlap, fftSize, fs, 'yaxis');

%% 16 points fft
figure(11)
wLen = 2^4;
nOverlap = wLen/2;
fftSize = wLen;
spectrogram(drum, wLen, nOverlap, fftSize, fs, 'yaxis');

%% spectrogram of church_bell.wav


%% spectrogram of colored_noise.wav


%% spectrogram of diner.wav