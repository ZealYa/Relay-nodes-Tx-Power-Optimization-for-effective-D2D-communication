%% Program Initialization
clear;
close all;
clc;
format long g;


%% Testing, feel free to play around with values
% Current values taken as per the table in the paper
t = tc(0.0001, 0.0003,0.0004,24, 15, 15, 0,2,2, 4, 35) % Output tc for a given lambda, verified with original


function [t] = tc(l0, l1, l2 ,p0, p1, p2, t0,t1,t2, a, r)
%
%   Modified by:
%               Atman Kar
%               Harish Uttayakumar
%               Aravind Kamalakannan
%               Nikhil Ravi
%   for MTN project under:
%               Dr. Nitin Sharma
%
%   Input argments
% 
%         l0 - Cellular user density
%         l1 - D2D density
%         l2 - Potential RN density
%         p0 - Cellular transmission power
%         p1 - D2D transmission power
%         p2 - RN transmission power
%         t0 - Cellular SIR threshold
%         t1 - D2D SIR threshold
%         t2 - SIR threshold of relay transmission
%         a - Path loss coefficient
%         r - D2D link distance
%        
%     Returns:
%           t - Transmission Capacity (bps/Hz)
%
%


Tx1m = p0;Tx2m = p1;Tx3m = p2;Tx4m = t1;Tx5m = t0;
Tx6m = a;Tx7m = [r];Tx8m = size(Tx7m,2);Tx9m = l0;       
Tx10m = l1;A = (4*pi-36*sqrt(3)+64)/(12*pi-9*sqrt(3)); 
Tx11m = pi*gamma(1+2/Tx6m)*gamma(1-2/Tx6m);
Tx12m = zeros(1,6);Tx13m = 10^(Tx1m/10);
Tx14m = 10^(Tx2m/10);Tx15m = 10^(Tx3m/10);Tx16m = 10^(Tx4m/10);
Tx17m = 10^(Tx5m/10);
% Tx18m = ll2;
% Tx19m = lr2;
% Tx20m = 40;
% Tx21m = (Tx19m-Tx18m)/Tx20m;
% Tx22m = Tx18m:Tx21m:Tx19m;
Tx22m = [l2];
Tx23m = size(Tx22m,2);
for Tx24m = 1:Tx8m;
Tx25m = Tx7m(1,Tx24m);
Tx26m = ((2*pi/3)-sqrt(3)/2)*(Tx25m^2);
exp(-Tx22m*Tx26m);
Tx27m = 1-exp(-Tx22m*Tx26m);Tx28m = exp(-Tx11m*(Tx16m^(2/Tx6m))*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+Tx10m));
Tx29m = Tx10m*Tx28m*ones(1,Tx23m);Tx30m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+1/2*Tx10m*Tx27m+1/2*Tx10m*Tx27m*((Tx15m/Tx14m)^(2/Tx6m))));Tx31m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx15m)^(2/Tx6m))+1/2*Tx10m*Tx27m*((Tx14m/Tx15m)^(2/Tx6m))+1/2*Tx10m*Tx27m));    
Tx32m = 1/2*Tx10m*Tx27m.*Tx30m.*Tx31m;
Tx33m = exp(-Tx11m*(Tx16m^(2/Tx6m))*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+Tx10m+1/2*Tx10m*Tx27m*((Tx15m/Tx14m)^(2/Tx6m)-1)));
Tx34m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+Tx10m+1/2*Tx10m*Tx27m*((Tx15m/Tx14m)^(2/Tx6m)-1)));
Tx35m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx15m)^(2/Tx6m))+Tx10m*((Tx14m/Tx15m)^(2/Tx6m))+1/2*Tx10m*Tx27m*(1-((Tx14m/Tx15m)^(2/Tx6m)))));
Tx36m = Tx10m*(1-Tx27m).*Tx33m+1/2*Tx10m*Tx27m.*Tx34m.*Tx35m;
end

t = Tx36m;

end











