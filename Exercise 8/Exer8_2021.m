% Task 3
b=[0.0122,0.0226,0.0298,0.0204,0.0099];
a=[1,-0.9170,0.0540,-0.2410,0.1990];

zplane(b,a)
zplane(a,b)

freqz(b,a)
freqz(a,b)

impz(b,a)
impz(a,b)

load handel.mat
spectrogram(y)
y_filtered = filter(b,a, y);
spectrogram(y_filtered)
y_filtered_inverse = filter(a,b, y_filtered);
spectrogram(y_filtered_inverse)
%%
% Task 4
clear all
t=0:1/8192:4;
y=chirp(t,0,1,1000);
soundsc(y)
spectrogram(y)

pause(3)

a=[1 -1.143 0.4128];
b=[0.0675 0.1349 0.0675];

y_filtered = filter(b,a,y);
soundsc(y_filtered)
spectrogram(y_filtered)

freqz(b,a);
%%
% Task 5
load number.mat
sound(secret);
spectrogram(secret,256,'yaxis');
% number is 3653840