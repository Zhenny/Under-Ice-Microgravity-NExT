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
k = [12,28.5,45]            %thermal conductivity ()
r = .5 * ratio;             %radius of cylinder (m)
h = ratio;                  %height of cylindrical sheet (m)
A = 2*pi*r*h;               %Area of cylindrical sheet (m^2) 
Tc = 263.15;                %Temperature of ice (K)
d = 3*ratio;                %length of ice sample (m)

alpha1 = k(1)*A / d;        %constants made up of previous values
alpha2 = k(2)*A / d;        %slopes of the linear equation (W/K or (J/(s*K))
alpha3 = k(3)*A / d;        %both lines apply to all 3 alphas


%Functions: Fourier's Law
T = [0:0.1:500];
P1 = alpha1 *(T - Tc);
P2 = alpha2 *(T - Tc);
P3 = alpha3 *(T - Tc);

%Plotting of Functions
plot(T,P1);
hold on
plot(T,P2);
hold on
plot(T,P3);
xlabel('T (K)');
ylabel('P(T) (W)');
title('Conduction Fouriers Law');
legend('P1: conductivity - low','P2: conductivity - average', 'P3: conductivity - high');