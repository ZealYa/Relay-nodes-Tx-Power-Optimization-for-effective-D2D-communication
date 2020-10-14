Tx1m = 24;Tx2m = 15;Tx3m = 15;Tx4m = 0;Tx5m = 0;
Tx6m = 4;Tx7m = 1*10^(-5);Tx8m = [3*10^(-4) 1*10^(-3)];    
Tx9m = size(Tx8m,2);Tx10m = Tx8m(1,1);
Tx11m = [35 50];Tx12m = size(Tx11m,2);
A = (4*pi-36*sqrt(3)+64)/(12*pi-9*sqrt(3));    
Tx13m = pi*gamma(1+2/Tx6m)*gamma(1-2/Tx6m);  
Tx37m = zeros(1,6);Tx15m = 10^(Tx1m/10);Tx16m = 10^(Tx2m/10);Tx17m = 10^(Tx3m/10);Tx18m = 10^(Tx4m/10);
Tx19m = 10^(Tx5m/10);Tx20m = 1*10^(-7);Tx21m = 2*10^(-3);Tx22m = 50;Tx23m = (Tx21m-Tx20m)/Tx22m;
Tx24m = Tx20m:Tx23m:Tx21m;Tx25m = size(Tx24m,2);
for Tx26m = 1:Tx12m
Tx27m = Tx11m(1,Tx26m);
Tx28m = ((2*pi/3)-sqrt(3)/2)*(Tx27m^2);    
exp(-Tx10m*Tx28m)
Tx29m = 1-exp(-Tx10m*Tx28m);
Tx30m = exp(-Tx13m*(Tx18m^(2/Tx6m))*(Tx27m^2)*(Tx7m*((Tx15m/Tx16m)^(2/Tx6m))+Tx24m+1/2*Tx24m*Tx29m*((Tx17m/Tx16m)^(2/Tx6m)-1)));
Tx31m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx16m)^(2/Tx6m))+Tx24m+1/2*Tx24m*Tx29m*((Tx17m/Tx16m)^(2/Tx6m)-1)));
Tx32m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx17m)^(2/Tx6m))+Tx24m*((Tx16m/Tx17m)^(2/Tx6m))+1/2*Tx24m*Tx29m*(1-((Tx16m/Tx17m)^(2/Tx6m)))));
Tx33m = Tx24m*(1-Tx29m).*Tx30m+1/2*Tx24m*Tx29m.*Tx31m.*Tx32m;
Tx37m(1,Tx26m) = plot(Tx24m(1,:),Tx33m(1,:));
hold on;
end
for Tx26m = 1:1
Tx27m = Tx11m(1,Tx26m);Tx28m = ((2*pi/3)-sqrt(3)/2)*(Tx27m^2);     
exp(-Tx10m*Tx28m)
Tx29m = 1-exp(-Tx10m*Tx28m);Tx34m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx16m)^(2/Tx6m))+1/2*Tx24m*Tx29m+1/2*Tx24m*Tx29m*((Tx17m/Tx16m)^(2/Tx6m))));
Tx35m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx17m)^(2/Tx6m))+1/2*Tx24m*Tx29m*((Tx16m/Tx17m)^(2/Tx6m))+1/2*Tx24m*Tx29m));Tx36m = 1/2*Tx24m*Tx29m.*Tx34m.*Tx35m;
Tx37m(1,Tx26m+2) = plot(Tx24m(1,:),Tx36m(1,:));
hold on;
end
Tx10m = Tx8m(1,2);             
for Tx26m = 1:1
Tx27m = Tx11m(1,Tx26m);Tx28m = ((2*pi/3)-sqrt(3)/2)*(Tx27m^2);  
    exp(-Tx10m*Tx28m)
Tx29m = 1-exp(-Tx10m*Tx28m);Tx30m = exp(-Tx13m*(Tx18m^(2/Tx6m))*(Tx27m^2)*(Tx7m*((Tx15m/Tx16m)^(2/Tx6m))+Tx24m+1/2*Tx24m*Tx29m*((Tx17m/Tx16m)^(2/Tx6m)-1)));
Tx31m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx16m)^(2/Tx6m))+Tx24m+1/2*Tx24m*Tx29m*((Tx17m/Tx16m)^(2/Tx6m)-1)));
Tx32m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx17m)^(2/Tx6m))+Tx24m*((Tx16m/Tx17m)^(2/Tx6m))+1/2*Tx24m*Tx29m*(1-((Tx16m/Tx17m)^(2/Tx6m)))));
Tx33m = Tx24m*(1-Tx29m).*Tx30m+1/2*Tx24m*Tx29m.*Tx31m.*Tx32m;
Tx37m(1,Tx26m+3) = plot(Tx24m(1,:),Tx33m(1,:));
	hold on;
end
Tx7m = 5*10^(-5);Tx10m = Tx8m(1,1);             
for Tx26m = 1:1
Tx27m = Tx11m(1,Tx26m);Tx28m = ((2*pi/3)-sqrt(3)/2)*(Tx27m^2);     
exp(-Tx10m*Tx28m)
Tx29m = 1-exp(-Tx10m*Tx28m);Tx30m = exp(-Tx13m*(Tx18m^(2/Tx6m))*(Tx27m^2)*(Tx7m*((Tx15m/Tx16m)^(2/Tx6m))+Tx24m+1/2*Tx24m*Tx29m*((Tx17m/Tx16m)^(2/Tx6m)-1)));
Tx31m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx16m)^(2/Tx6m))+Tx24m+1/2*Tx24m*Tx29m*((Tx17m/Tx16m)^(2/Tx6m)-1)));Tx32m = exp(-Tx13m*(Tx19m^(2/Tx6m))*(A^2)*(Tx27m^2)*(Tx7m*((Tx15m/Tx17m)^(2/Tx6m))+Tx24m*((Tx16m/Tx17m)^(2/Tx6m))+1/2*Tx24m*Tx29m*(1-((Tx16m/Tx17m)^(2/Tx6m)))));Tx33m = Tx24m*(1-Tx29m).*Tx30m+1/2*Tx24m*Tx29m.*Tx31m.*Tx32m;
Tx37m(1,Tx26m+3) = plot(Tx24m(1,:),Tx33m(1,:));hold on;
end
xlabel('D2D density \lambda_1 (m^{-2})');
ylabel('D2D transmission capacity (bit/s/Hz)');
grid on;
