% t - przedzial czasu
% y - wektor [y; dy/dt]
% funkcja rozwiazuje rownanie rozniczkowe II rzedu
% d2x/dt2 = -2q*dx/dt - p^2*x
% w pierwszej kolumnie wartosci y
% w drugiej kolumnie wartosci dy/dt

function [ yp ] = rownanie(t, y)

global c;
global k;
global m;

yp = zeros(2,1);
yp(1) = y(2);       % y(1)=y, y(2)=dy/dt

yp(2) = -2*(c/m)*y(2) - (k/m)*y(1);