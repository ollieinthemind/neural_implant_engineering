clc; clear all;

d=[13 12 11 10.3 10 9 8 7 6 5 4.9 4.7 4.5 4.4];
tau=[.78 1.01 1.5 2 2.3 3.9 6.2 8.7 11.6 15.4 16 17.2 18.9 20.4];
plot(tau,d)
xlabel('Tau (ms)')
ylabel('Delay of Onset (ms)')
title('Onset Delay vs. Tau for Alpha Synapse to get 2^n^d AP')