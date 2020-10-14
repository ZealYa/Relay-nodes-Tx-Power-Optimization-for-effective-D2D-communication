Tx1m = 24;Tx2m = 15;Tx3m = 15;Tx4m = 2;Tx5m = 0;
Tx6m = 4;Tx7m = [35 40];Tx8m = size(Tx7m,2);Tx9m = 1*10^(-4);       
Tx10m = 3*10^(-4);A = (4*pi-36*sqrt(3)+64)/(12*pi-9*sqrt(3)); 
Tx11m = pi*gamma(1+2/Tx6m)*gamma(1-2/Tx6m);
Tx12m = zeros(1,6);Tx13m = 10^(Tx1m/10);
Tx14m = 10^(Tx2m/10);Tx15m = 10^(Tx3m/10);Tx16m = 10^(Tx4m/10);
Tx17m = 10^(Tx5m/10);Tx18m = 1*10^(-7);
Tx19m = 3*10^(-3);Tx20m = 40;Tx21m = (Tx19m-Tx18m)/Tx20m;Tx22m = Tx18m:Tx21m:Tx19m;Tx23m = size(Tx22m,2);
for Tx24m = 1:Tx8m;
Tx25m = Tx7m(1,Tx24m);
Tx26m = ((2*pi/3)-sqrt(3)/2)*(Tx25m^2);
exp(-Tx22m*Tx26m)
Tx27m = 1-exp(-Tx22m*Tx26m);Tx28m = exp(-Tx11m*(Tx16m^(2/Tx6m))*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+Tx10m));
Tx29m = Tx10m*Tx28m*ones(1,Tx23m);Tx30m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+1/2*Tx10m*Tx27m+1/2*Tx10m*Tx27m*((Tx15m/Tx14m)^(2/Tx6m))));Tx31m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx15m)^(2/Tx6m))+1/2*Tx10m*Tx27m*((Tx14m/Tx15m)^(2/Tx6m))+1/2*Tx10m*Tx27m));    
Tx32m = 1/2*Tx10m*Tx27m.*Tx30m.*Tx31m;
Tx33m = exp(-Tx11m*(Tx16m^(2/Tx6m))*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+Tx10m+1/2*Tx10m*Tx27m*((Tx15m/Tx14m)^(2/Tx6m)-1)));
Tx34m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx14m)^(2/Tx6m))+Tx10m+1/2*Tx10m*Tx27m*((Tx15m/Tx14m)^(2/Tx6m)-1)));
Tx35m = exp(-Tx11m*(Tx17m^(2/Tx6m))*(A^2)*(Tx25m^2)*(Tx9m*((Tx13m/Tx15m)^(2/Tx6m))+Tx10m*((Tx14m/Tx15m)^(2/Tx6m))+1/2*Tx10m*Tx27m*(1-((Tx14m/Tx15m)^(2/Tx6m)))));
Tx36m = Tx10m*(1-Tx27m).*Tx33m+1/2*Tx10m*Tx27m.*Tx34m.*Tx35m;Tx12m(1,((Tx24m-1)*3+1)) = plot(Tx22m(1,:),Tx29m(1,:));
hold on;
Tx12m(1,((Tx24m-1)*3+2)) = plot(Tx22m(1,:),Tx32m(1,:));
Tx12m(1,((Tx24m)*3)) = plot(Tx22m(1,:),Tx36m(1,:));
end
xlabel('Potential RN density \lambda_2 (m^{-2})');
ylabel('D2D transmission capacity (bit/s/Hz)');
grid on;
