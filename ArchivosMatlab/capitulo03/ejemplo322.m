% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all

t = (0:0.01:10);
y1 = 5*t.*sin(t);
y2 = 1./(1+t);
plot(t,y1)
xlabel('Tiempo (s)')
ylabel('y1')
figure()
plot(t,y2)
xlabel('Tiempo (s)')
ylabel('y2')
