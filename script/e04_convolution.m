%reverberation by convolution
close all
clear variables

filename = '../audio_samples/la.wav';
[la, fs]=audioread(filename);
fprintf('FS = %d\n', fs)

%% reverberation Foligno cathedral (mono)
filename = '../audio_samples/rir_basilfoligno.wav';
[rirBasil, fs]=audioread(filename);
fprintf('FS = %d\n', fs)
%%
revBasil = conv(la,rirBasil(:,1)); %RIR is stereo, only left channel is used here
soundsc(revBasil,fs)
pause(7)

%% reverberation Foligno cathedral (stereo)
filename = '../audio_samples/rir_basilfoligno.wav';
[rirBasil, fs]=audioread(filename);
fprintf('FS = %d\n', fs)

revBasilLeft = conv(la,rirBasil(:,1));
revBasilRight = conv(la,rirBasil(:,2));
revBasilStereo = [revBasilLeft,revBasilRight];
soundsc(revBasilStereo, fs)

%% reverberation Teatro alla Scala
filename = '../audio_samples/rir_scala.wav';
[rirScala, fs]=audioread(filename);
fprintf('FS = %d\n', fs)
%%
revScala = conv(la,rirScala(:,1));
soundsc(revScala,fs)

%% apply to mozart.wav the reverberation of Teatro alla Scala 

%% apply to mozart.wav the reverberation of your room