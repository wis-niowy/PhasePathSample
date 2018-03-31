% plik glowny programu

function [ ] = Program()

clc;
global c;   % wspolczynnik tlumienia 
global k;   % wspolczynnik sprezystosci
global m;   % masa
c = input('Podaj wsp. tlumienia c: ');
k = input('Podaj wsp. sprezystosci k: ');
m = input('Podaj mase m: ');
t0 = 0; tfinal = 12;
y0 = [ 1.5 0 ];
tol = 1.e-3;
trace = 1;
tfinal = tfinal*(1+eps);
% obliczanie wartsoci rownania rozniczkowego II rzedu
[t, y] = ode23('rownanie', [t0 tfinal], y0, tol, trace);

% rysowanie wykresu dy/dt(y)
plot(y(:,1), y(:,2));
title('Trajektoria fazowa');
xlabel('y'); ylabel('dy/dt');
grid on;