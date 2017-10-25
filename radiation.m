%%Author: David Al-Nemri
%%NASA Microgravity NExT - Under Ice


%******Heat Radiation******

%P: Power (W)
%o: Boltzman Constant (W / (m^2 * K^4))
%A: Area (Side of a Cylinder)(m^2)
%1 in = 2.54 cm
%1 in = .0254 m

ratio = .0254;              %conversion rate to cm
o = 5.6703e-8;              %o: Boltzman Constant (W / (m^2 * K^4))
r = .5 * ratio;             %radius of cylinder (m)
h = ratio;                  %height of cylindrical sheet (m)
A = 2*pi*r*h;               %Area of cylindrical sheet (m^2) 
Tc = 263.15;                %Temperature of ice (K)

alpha = o * A;              %constant made up of Area and Boltzman

T = [0:0.1:500];
P1 = alpha *(T.^4 - Tc^4);

plot(T,P1);
xlabel('T (K)');
ylabel('P(T) (W)');
title('Conduction Fouriers Law');
legend('P1: radiation of cylinder');