% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all

t = (0:0.01:10);
y1 = t.^2 +4*t +2;
y2 = exp(1/2*t);
plot(t,y1)
xlabel('Tiempo (s)')
ylabel('y')
hold on
plot(t,y2)
