close all;

fm = input('Enter input signal frequency :-> ');
fprintf('Enter Sampling frequency (%i for optimum sampling)',2*fm)
fs = input(':-> ');
sp = input('Enter speed :-> ');
ts = 0:1/fs:1-1/fs;
t = 1:1:2*fs;
x = sin(2*(fm/25)*pi*ts);

i=1;
j=1;
for k=1:1:fs
    
    % for plotting real time input signal
    subplot(2,1,1);
    plot(t(1:i),x(1:i));
    xlim([0 fs])
    ylim([-1.2 1.2])
    title('Sinusoidal input')
    i=i+1;
    
    % for plotting real time sample and hold output signal
    subplot(2,1,2);
    stem(t(1:j),x(1:j));
    hold on
    stairs(t(1:j),x(1:j));
    xlim([0 fs])
    ylim([-1.2 1.2])
    hold off
    title('Sample and Hold Output')
    j=j+2;
    
    % Introducing delay to construct signal in real time
    pause(1/sp)
end