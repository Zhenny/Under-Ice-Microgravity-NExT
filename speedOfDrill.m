%%Author: David Al-Nemri
%%NASA Microgravity NExT - Under Ice


%******Speed of Drill******

%v: velocity cm/s
%I: current (A)
%R: resistance (ohms)
%rho: density (g /(cm^3) )
%deltaT: change in temperature of sample (C)
%c: specfic heat capacity (J /(g*C) )
%s: surface area of cutting (cm^2)

R = 1.1e-6;
rho = .9167;
c = 2.03;
deltaT = 10;
s = .1954;

alpha = R / (rho*c*deltaT*s);

I = [0:0.1:25];

v = ((I.^2).*alpha);

plot(I,v);
xlabel('I (s)');
ylabel('v(I) (cm/s)');
title('Speed of Drill');
legend('v(I): velocity as a function of amps');
