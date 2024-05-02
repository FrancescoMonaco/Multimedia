%%% Plots amplitude/phase/impulse responses of simple filters
%%% - First-order low/high-pass FIR filter
%%% - First-order low/high-pass IIR filter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear variables

%%
%%%%%%%%%%%%%%% 1st order low-pass FIR filter %%%%%%%%%%%%%%%%%
B_fir_lp= [1/2, 1/2];
A_fir_lp= 1;

figure(1)
freqz(B_fir_lp,A_fir_lp); grid on;

%%
%%%%%%%%%%%%%%% 1st order high-pass FIR filter %%%%%%%%%%%%%%%%%
B_fir_hp= [1/2, -1/2];
A_fir_hp= 1;

figure(2)
freqz(B_fir_hp,A_fir_hp); grid on;

%% room impulse renspose as a filter
filename = '../audio_samples/la.wav';
[la, fs]=audioread(filename);
fprintf('FS = %d\n', fs)

%reverberation Foligno cathedral (mono)
filename = '../audio_samples/rir_basilfoligno.wav';
[rirBasil, fs]=audioread(filename);
fprintf('FS = %d\n', fs)

la = [la;zeros(44100*4,1)];
revBasil = filter(rirBasil(:,1), 1, la);
soundsc(revBasil,fs)
pause(5)

figure(3)
freqz(rirBasil(:,1), 1); grid on;

%% mozart high-passed 
filename = '../audio_samples/mozart.wav';
[mozart, fs]=audioread(filename,[1,44100*5]);
fprintf('FS = %d\n', fs)
soundsc(mozart,fs)
pause(6)
mozartFiltred = filter(B_fir_hp, A_fir_hp , mozart);
soundsc(mozartFiltred,fs)
pause(6)

%% mozart low-passed 


%%
%%%%%%%%%%%%%%% 1st order low-pass IIR filter %%%%%%%%%%%%%%%%%
