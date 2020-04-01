% Universidad de Costa Rica
% Laboratorio de Mecánica Computacional

clc
clear variables


velAngular = 10;
m = 4;
R = 10;
momentoInercia = 1/12*m*R^2;
T = 1/2*momentoInercia*velAngular^2;
fprintf('La energia cinetica rotacional es %f [J]\n',T);