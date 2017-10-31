%%Author: David Al-Nemri
%%NASA Microgravity NExT - Under Ice


%******Heat Fusion******


H = 334;
rho = .9167;
ratio = 2.54;
t = .018 * ratio;
r = .40832 * ratio;
h = ratio;
V = pi*(2*r*t - t^2)*h;
m = rho * V;
q = m * H;

ratio2 = .3048;
p = 2*pi*r / 100;
ohms = [10*ratio2*p; 25*p*ratio2; 40*p*ratio2];
I = [0:0.1:25];
V = I.*ohms;
plot(I,V);


