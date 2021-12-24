% Task 3
   Fs = 16000;                  
   f = 2000;                
   n = [1:16000];
   x = sin(2*pi*n*f/Fs);
   y = fft(x);
   z = abs(y);
   plot(n,z);
%%
% Task 4
clear all
x = [1 2 3 4]';

dft_result = dft(x)
fft_result = fft(x)

%%
% Task 5 - a
clear all
x=rand(1024,1);

tic(); % Starts a stopwatch timer
dft_result=dft(x) % DFT computation
elapsed_time_dft=toc(); % Reads the elapsed time from the timer

tic(); % Starts a stopwatch timer
fft_result=fft(x)  % DFT computation
elapsed_time_fft=toc(); % Reads the elapsed time from the timer

disp(["Time Taken by DFT", elapsed_time_dft])
disp(["Time Taken by FFT", elapsed_time_fft])

%%
% Task 5 - b
clear all
sum_dft = 0;
sum_fft = 0;
for i = 1:100
    x=rand(1024,1);
    
    tic(); % Starts a stopwatch timer
    dft_result=dft(x); % DFT computation
    elapsed_time_dft=toc(); % Reads the elapsed time from the timer
    sum_dft = sum_dft + elapsed_time_dft;
    
    tic(); % Starts a stopwatch timer
    fft_result=fft(x);  % DFT computation
    elapsed_time_fft=toc(); % Reads the elapsed time from the timer
    sum_fft = sum_fft + elapsed_time_fft;
end
disp(["Estimate time by DFT", sum_dft/100])
disp(["Estimate time by FFT", sum_fft/100])
%%
% Task 5 - c
clear all
N = [32, 64, 128, 256, 512, 1024];
estimate_dft = [];
estimate_fft = [];
sum_dft = 0;
sum_fft = 0;
k = 1;
for N1=N(1:length(N))
    for i = 1:100
        x=rand(N1,1);
        
        tic(); % Starts a stopwatch timer
        dft_result=dft(x); % DFT computation
        elapsed_time_dft=toc(); % Reads the elapsed time from the timer
        sum_dft = sum_dft + elapsed_time_dft;
        
        tic(); % Starts a stopwatch timer
        fft_result=fft(x);  % DFT computation
        elapsed_time_fft=toc(); % Reads the elapsed time from the timer
        sum_fft = sum_fft + elapsed_time_fft;
    end
    estimate_dft(k) = sum_dft/100;
    estimate_fft(k) = sum_fft/100;
    k= k+1;
end

% Task 5 - d

plot(N,estimate_dft, 'b')
title("DFT Average Estimation")
hold on
plot(N,estimate_fft, 'r')
title("FFT Average Estimation")
hold off
%%
function dft_result = dft(x)
    N = length(x);
    F=exp(-2*pi*1i*(0:N-1)'*(0:N-1)/N);
    dft_result = F*x;
end