clc
clear all

%ing the following MATLAB code sample, complete the TODOs to 
...calculate thevelocity in m/s of four targets with following 
...doppler frequency shifts: [3 KHz, -4.5 KHz, 11 KHz, -3 KHz].
%Operating frequency (Hz)
fc = 77.0e9;

%Speed of light
c = 3*10^8;

%Calculate the wavelength (lambda)
lambda = c/fc;

% TODO : Define the doppler shifts in Hz using the information from above
fd = [3e3, -4.5e3, 11e3, -3e3];

% TODO : Calculate the velocity of the targets  fd = 2*vr/lambda
vr = fd*lambda/2.0