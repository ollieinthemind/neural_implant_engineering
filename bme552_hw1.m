%dennis mcilhany bme 552 homework 1

clc; clear all;

rho=150/100;   %tissue resistivity (ohm-m)

a=150*10^-6;              %electrode radius (m)
Relec=5000000;      %parallel electrode resistance
C=25*10^-6*(100)^2*(pi*a^2);         %capacitance (farads/m^2 * m^2)
f=1:1000000;         %frequency (hz)
m=1;                %surface roughness
w=2.*pi.*f;

ZRelec=Relec;
ZC=1./(1i.*w.*m.*C);
Ztis=rho/(4*a);

Zpara=1./((1/ZRelec)+(1./ZC));

Ztot=Zpara+Ztis;

Mag=abs(Ztot);
Phase=angle(Ztot)*180/pi;

semilogx(f,Phase)
title('Phase')
xlabel('Frequency (hz)')
ylabel('Phase (degrees)')




rho2=150/100;   %tissue resistivity (ohm-m)
a2=300*10^-6;              %electrode radius (m)
Relec2=5000000;      %parallel electrode resistance
C2=25*10^-6*(100)^2*(pi*a2^2);         %capacitance (farads/m^2 * m^2)
f2=1:100000;         %frequency (hz)
m2=1;                %surface roughness
w2=2.*pi.*f2;

ZRelec2=Relec2;
ZC2=1./(1i.*w2.*m2.*C2);
Ztis2=rho2/(4*a2);

Zpara2=1./((1/ZRelec2)+(1./ZC2));

Ztot2=Zpara2+Ztis2;

Mag2=abs(Ztot2);
Phase2=angle(Ztot2)*180/pi;
% 
% loglog(f,Mag,f,Mag2)
% title('Magnitude of Impedance')
% xlabel('Frequency (hz)')
% ylabel('Magnitude (Ohms)')
% legend('rho = 100 ohm-cm','rho = 200 ohm-cm','Location','Best')

% 
% rho3=150/100;   %tissue resistivity (ohm-m)
% a3=500*10^-6;              %electrode radius (m)
% Relec3=5000000;      %parallel electrode resistance
% C3=25*10^-6*(100)^2*(pi*a3^2);         %capacitance (farads/m^2 * m^2)
% f3=1:100000;         %frequency (hz)
% m3=1;                %surface roughness
% w3=2.*pi.*f3;
% 
% ZRelec3=Relec3;
% ZC3=1./(1i.*w3.*m3.*C3);
% Ztis3=rho3/(4*a3);
% 
% Zpara3=1./((1/ZRelec3)+(1./ZC3));
% 
% Ztot3=Zpara3+Ztis3;
% 
% Mag3=abs(Ztot3);
% Phase3=angle(Ztot3)*180/pi;
% 
% % 
% % loglog(f,Mag,f,Mag2,f,Mag3)
% % title('Magnitude of Impedance')
% % xlabel('Frequency (hz)')
% % ylabel('Magnitude (Ohms)')
% % legend('a = 100 microns','a = 300 microns','a = 500 microns')
% 
% semilogx(f,Phase,f,Phase2,f,Phase3)
% title('Phase')
% xlabel('Frequency (hz)')
% ylabel('Phase (degrees)')
% legend('a = 100 microns','a = 300 microns','a = 500 microns','Location','Best')
% 
% 
