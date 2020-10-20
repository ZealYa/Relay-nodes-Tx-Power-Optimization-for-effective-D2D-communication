%% Program init
clear;
clc;
close all;
format long g;

%% Try genetic algo for 2 vars

% lambda2 vs P2 vs error function (constraint function) graph, as a surface
% plot.
syms x y;
ezsurf(constraint_func([x y]), [0.0001, 0.0009, 0.006309, 0.1]);
title('TC - Target as a function of \lambda_{2} and P2')


ObjectiveFunction = @fitness_func;
nvars = 2;    % Number of variables
LB = [0.0001 0.006309];   % Lower bound
UB = [0.0009 0.1];  % Upper bound
ConstraintFunction = @constraint_func;
options=gaoptimset('PopulationSize',80,'Generations',400,'StallGenLimit',200,'SelectionFcn', @selectionroulette,'CrossoverFcn',@crossovertwopoint,'Display', 'off');
[x,fval] = ga(ObjectiveFunction,nvars,[],[],[],[],LB,UB, ...
    ConstraintFunction, options);

fprintf("TC = %g bps/Hz \n", tc(0.0001, 0.0003,x(1),24, 15, 10*log10(x(2)) + 30, 0,2,2, 4, 35));
fprintf("RN Tx power = %g dBm \n", 10*log10(x(2)) + 30);
fprintf("RN density (# of relay nodes/ Km^2) = %g \n", x(1)*1e6);
fprintf("Output RNPD = %g W/Km2 \n", x(2) * x(1) * 1e6);


% Fitness function is what is to be minimized
function y = fitness_func(V)
    % Try and minimize the Tx power/ unit area for the RN.

    
    l2 = V(1);
    P2 = V(2);

      y = (l2*P2*1e6)^2;
end

function [c, ceq] = constraint_func(V)
    
    l2 = V(1);
    p2 = V(2);
    
    p2 = 10*log10(p2) + 30; % converting to dBm for the TC code
    % Here "target" is the TC that we want for that area, therefore, a
    % constraint
    target = 6; % bps/Hz * 1e6, scaled as this resulted in better optimisation outputs
    c = [(tc(0.0001, 0.0003,l2,24, 15, p2, 0,2,2, 4, 35)*1e6 - target)^2];
    ceq = [];
end
