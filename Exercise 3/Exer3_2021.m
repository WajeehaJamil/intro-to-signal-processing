% Task 3 - a
delta = [zeros(1,7),1,zeros(1,7)];
n = -7:7;
stem(n', delta);
title('Unit Sample')

% Task 3 - b
u = [zeros(1,7),ones(1,8)];
n = -7:7;
stem(n', u);
title('Unit Step')

% Task 3 - c
r = [zeros(1,7),0:7];
n = -7:7;
stem(n', r);
title('Ramp Signal')


% Task 4 - a
A=1:100;
A=reshape(A,[10,10])'

% Task 4 - b
A1 = A.^3

% Task 4 - c
A2 = A^3

% Task 4 - d
B = rand(10)

% Task 4 - e
C = inv(B)
product = B*C


% Task 5
[x,Fs]=audioread('seiska.wav');
subplot(2,1,1); %2 rows , 1 column,position 1
spectrogram(x, 256, [], [], Fs, 'yaxis');
soundsc(x,Fs);

pause(2); %stop for 2 seconds so that both sounds will not mix

h = fir1(30, 0.3, 'high');
y = filter(h, 1, x);
soundsc(y,Fs);
subplot(2,1,2); %2 rows , 1 column, position 2
spectrogram(y, 256, [], [], Fs, 'yaxis');
%%  Yes, low frequencies have been removed in filtered signal. %%
%% 
%