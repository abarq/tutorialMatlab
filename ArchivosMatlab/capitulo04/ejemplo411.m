% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all

vector = [10 5];
angulo = 30;
angulo = angulo*pi/180;

nuevosComponentes = calcularComponentesMarcoRotado(vector,angulo);
fprintf("El componente  x' es: %f\n", nuevosComponentes(1));
fprintf("El componente  y' es: %f\n", nuevosComponentes(2));