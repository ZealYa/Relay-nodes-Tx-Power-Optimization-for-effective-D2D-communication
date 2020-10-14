%% Program Intitialization
clear;
close all;
clc;
format long g;
%% 
% This MATLAB script is to simulate and plot the relationship between relay
% node density (# of relay nodes / sq. m) and the transmission capacity of
% the D2D network (in overlay mode)

% This is the code for CASE 1, where we consider that D2D comms can only
% take place, provided a relay node is present in the "shadow region"

lambda_1 = 0.0003; % D2D density in the area
lambda_2 = 0.0004; % RN density in the area
P_1 = 0.031622; % in Watts ,15 dbm, D2D transmission power
P_2 = 0.031622; % in Watts ,15 dbm, relay node transmission power


T_1 = 1.25893; % 2 db, D2D SIR threshold
T_2 = 1.25893; % 2 db, RN SIR threshold



alpha = 4; % Path loss exponent
R = 35; % D2D link distance


% Values defined in the paper
S = (2*pi/3 - sqrt(3)/2)*R^2;
Pr_e = 1 - exp(-1*lambda_2*S);
A = (4*pi - 36*sqrt(3) + 64)/(12*pi - 9*sqrt(3));
E = A*R;
C_alpha = pi*gamma(1 + 2/alpha)*gamma(1-(2/alpha));


% SIR threshold probability
sir_d_to_rn(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1);
sir_rn_to_d(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1);

transmission_capacity(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1)


% What we want
transmission_capacity(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1); % transmission capacity in bps/Hz

rn_density = [0:0.00001:0.002];
tcs = zeros(1, length(rn_density));
for i = 1: length(rn_density)
    x = rn_density(i);
    Pr_e = 1 - exp(-1*x*S);
    tcs(i) = transmission_capacity(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1);
end

plot(rn_density, tcs);
%% Function definitions
function [prob_d_to_rn] = sir_d_to_rn(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1)
    prob_d_to_rn= exp(-0.5*lambda_1*Pr_e*C_alpha*(T_2^(2/alpha))*(E^2)*(((P_2/P_1)^(2/alpha)) + 1));
end

function [prob_rn_to_d] = sir_rn_to_d(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1)
    prob_rn_to_d= exp(-0.5*lambda_1*Pr_e*C_alpha*(T_2^(2/alpha))*(E^2)*(((P_1/P_2)^(2/alpha)) + 1));
end

function [tc] = transmission_capacity(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1)
    tc = 0.5*lambda_1*Pr_e*sir_d_to_rn(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1)*sir_rn_to_d(lambda_1, Pr_e, C_alpha, T_2, alpha, E , P_2, P_1);

end

