Tx1m = 15;Tx2m = 15;Tx3m = 0;Tx4m = 0;Tx5m = 4;
Tx6m = [4*10^(-4) 1*10^(-3)];Tx7m = size(Tx6m,2);Tx8m = Tx6m(1,1);
Tx9m = [35 50];Tx10m = size(Tx9m,2);
A = (4*pi-36*sqrt(3)+64)/(12*pi-9*sqrt(3));
Tx11m = pi*gamma(1+2/Tx5m)*gamma(1-2/Tx5m);
Tx12m = 10^(Tx1m/10);Tx13m = 10^(Tx2m/10);
Tx14m = 10^(Tx3m/10);Tx16m = 1*10^(-5);Tx15m = 10^(Tx4m/10);Tx17m = 2*10^(-3);Tx18m = 40;
Tx19m = (Tx17m-Tx16m)/Tx18m;Tx20m = Tx16m:Tx19m:Tx17m;Tx21m = size(Tx20m,2);
for Tx22m = 1:Tx10m;
Tx23m = Tx9m(1,Tx22m);Tx24m = ((2*pi/3)-sqrt(3)/2)*(Tx23m^2);Tx25m = 1-exp(-Tx8m*Tx24m);Tx26m = exp(-Tx20m*Tx11m*((Tx14m)^(2/Tx5m))*(Tx23m^2));Tx27m = Tx20m.*Tx26m;Tx28m = exp(-1/2*Tx20m*Tx25m*Tx11m*(Tx15m^(2/Tx5m))*(A^2)*(Tx23m^2)*(((Tx13m/Tx12m)^(2/Tx5m))+1));Tx29m = exp(-1/2*Tx20m*Tx25m*Tx11m*(Tx15m^(2/Tx5m))*(A^2)*(Tx23m^2)*(((Tx12m/Tx13m)^(2/Tx5m))+1));Tx30m = 1/2*Tx20m.*Tx25m.*Tx28m.*Tx29m;plot(Tx20m(1,:),Tx30m(1,:));
hold on;    
end
for Tx22m = 1:1;
Tx23m = Tx9m(1,Tx22m);Tx24m = ((2*pi/3)-sqrt(3)/2)*(Tx23m^2);
exp(-Tx8m*Tx24m)
Tx25m = 1-exp(-Tx8m*Tx24m);Tx31m = exp(-Tx20m*Tx11m*(Tx14m^(2/Tx5m))*(Tx23m^2)*(1-(1/2)*Tx25m+1/2*Tx25m*((Tx13m/Tx12m)^(2/Tx5m))));Tx32m = exp(-Tx20m*Tx11m*(Tx15m^(2/Tx5m))*(A^2)*(Tx23m^2)*(1-(1/2)*Tx25m+1/2*Tx25m*((Tx13m/Tx12m)^(2/Tx5m))));Tx33m = exp(-Tx20m*Tx11m*(Tx15m^(2/Tx5m))*(A^2)*(Tx23m^2)*((1-1/2*Tx25m)*((Tx12m/Tx13m)^(2/Tx5m))+1/2*Tx25m));Tx34m = Tx20m*(1-Tx25m).*Tx31m+1/2*Tx20m*Tx25m.*Tx32m.*Tx33m;plot(Tx20m(1,:),Tx34m(1,:));
end
Tx8m = Tx6m(1,2);
for Tx22m = 1:1;
Tx23m = Tx9m(1,Tx22m);Tx24m = ((2*pi/3)-sqrt(3)/2)*(Tx23m^2);
    exp(-Tx8m*Tx24m)
Tx25m = 1-exp(-Tx8m*Tx24m);Tx28m = exp(-1/2*Tx20m*Tx25m*Tx11m*(Tx15m^(2/Tx5m))*(A^2)*(Tx23m^2)*(((Tx13m/Tx12m)^(2/Tx5m))+1));Tx29m = exp(-1/2*Tx20m*Tx25m*Tx11m*(Tx15m^(2/Tx5m))*(A^2)*(Tx23m^2)*(((Tx12m/Tx13m)^(2/Tx5m))+1));Tx30m = 1/2*Tx20m.*Tx25m.*Tx28m.*Tx29m;
plot(Tx20m(1,:),Tx30m(1,:));
hold on;   
end
xlabel('D2D density');
ylabel('D2D transmission capacity (bit/s/Hz)');
grid on;

