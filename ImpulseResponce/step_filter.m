clc;
clear all;
close all;

N = input('Enter the numerator co-efficients: ');
D = input('Enter the denominator co-efficients: ');
S = input('Enter the number of samples: ');

u =  ones(1, S);

h = filter(N,D,u);

disp('Impulse response of second order diff eqn:');
disp(h);

n = 0:1:S-1;
figure('Name', '');
xlabel('Sampling time');
ylabel('Amplitude');
title('Impulse response of second order diff eqn');
stem(n,h);