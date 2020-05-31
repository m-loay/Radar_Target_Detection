clc
clear all

%Operating frequency (Hz)
fc = 77.0e9;

%Transmitted power (W)
Pt = 3e-3;

%Antenna Gain (linear)
G =  10000;

%Minimum Detectable Power
Ps = 1e-10;

%RCS of a car m^2
RCS = 100;

%Speed of light
c = 3*10^8;

%TODO: Calculate the wavelength(m) = speed of light(m/s)/freq(hz)
lamda =  c/fc;

%TODO : Measure the Maximum Range a Radar can see. 
R = ( (Pt * G^2 * lamda^2* 100) / (Ps * (4*pi)^3) )^(1/4);
disp(R)