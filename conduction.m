%%Author: David Al-Nemri
%%NASA Microgravity NExT - Under Ice


%******Heat Conduction******

%P: Power
%k: thermal conductivity 12,28.5,45
%A: Area (Side of a Cylinder)
%d: distance going in
%1 in = 2.54 cm
%1 in = .0254 m

ratio = .0254;              %conversion rate to cm
k = 50                      %thermal conductivity ()
r = .5 * ratio;             %radius of cylinder (m)
h = ratio;                  %height of cylindrical sheet (m)
A = 2*pi*r*h;               %Area of cylindrical sheet (m^2) 
Tc = 263.15;                %Temperature of ice (K)
d = 3*ratio;                %length of ice sample (m)

alpha = k*A / d;        %constants made up of previous values
        %slopes of the linear equation (W/K or (J/(s*K))
        %both lines apply to all 3 alphas


%Functions: Fourier's Law
T = [0:0.1:500];
P = alpha *(T - Tc);

%Plotting of Functions
plot(T,P);
hold on

xlabel('T (K)');
ylabel('P(T) (W)');
title('Conduction Fouriers Law');
legend('P: conductivity');