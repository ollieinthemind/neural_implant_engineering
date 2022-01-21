%dennis mcilhany bme 552 homework 2

clc; clear all;


rho=300/100;            %tissue resistivity (ohm-m)
a=75*10^-6;             %electrode radius (m)
Rp=100000;              %parallel electrode resistance (ohm)
L=400*10^-6;            %recess length (m)
Ar=pi*a^2;              %electrode area (m^2)
PC=5;                   %pseudocapacity scalar
C=PC*20*10^-3*100^2*Ar;         %capacitance (mF/m^2 * m^2 * PC) - use mF to get milliseconds
Rs1=rho/(4*a);                  %resistance of tissue outside recess (ohm)
Rs2=rho*L/Ar;                   %resistance of tissue inside recess (ohm)
Rs3=Rs1+Rs2;                    %total tissue resistance = previous two added in series
dt=.01;                         %time step
t=0:dt:1;                       %time vector (1 ms)
I=200*10^-6;                    %current pulse (amps)



V1=I*Rs1+I*Rp*(1-exp(-t/(Rp*C)));       %voltage equation
% figure(1)
% plot(t,V1)
% title('Stimulation with Pt Electrode using 200 uA Current Pulse')
% xlabel('Time (ms)')
% ylabel('Voltage (V)')
figure(99)
V2=I.*Rs3+I.*Rp.*(1-exp(-t/(Rp*C)));
plot(t,V2)
title('Stimulation with Pt Electrode using 200 uA Current Pulse')
xlabel('Time (ms)')
ylabel('Voltage (V)')



