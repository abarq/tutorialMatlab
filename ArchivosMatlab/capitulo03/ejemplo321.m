% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all

t = (0:0.01:10);
y = 2*t.^2;
plot(t,y)
xlabel('Tiempo (s)')
ylabel('y')
