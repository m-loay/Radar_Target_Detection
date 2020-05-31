clc
clear all

%given alculate the range inmeters of four targets with respective 
... measured beat frequencies [0 MHz, 1.1 MHz, 13 MHz,24 MHz].
    
%The radar maximum range = 300m.
radar_max_range = 300.0;

%The range resolution = 1m.
delta_r = 1.0;

%The speed of light c = 3*108.
c = 3*10^8;

%MCW radar system, the sweep time should be at least5 to 6 times 
...the round trip time. This example uses a factor of 5.5:
Ts = 5.5 *2*radar_max_range/c;

%sweep calculation
Bsweep = c/2*delta_r;

%define beat frequncies
beat_freq = [0, 1.1e6, 13e6, 24e6];

%calculate the range
calculated_range = c*Ts*beat_freq/(2*Bsweep);
disp(calculated_range)
