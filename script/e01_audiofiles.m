%read, write, and play audio files

%% hello world
filename = '../audio_samples/hello.wav';
[y, fs]=audioread(filename);

fprintf('fs = %d\n', fs)
figure(1)
plot(y)


%% play with "sound"
sound(y,fs)
pause(2)


%% play with "soundsc"
soundsc(y,fs)
pause(2)

%% play with "audioplayer" and "play" or "playblocking"
p=audioplayer(y,fs);
play(p) %non blocking
pause(2)

playblocking(p) %pause is not necessary

%% change amplitude
y2 = y./4;
plot(y2)
sound(y2,fs)
pause(2)

%% write sound files
filename2 = 'helloSmall.wav';
audiowrite(filename2, y2, fs, 'BitsPerSample', 16)




