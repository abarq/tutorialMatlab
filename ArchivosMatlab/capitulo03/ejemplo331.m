% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all

x = (0:0.01:10);
y1 = exp(-x/2).*sin(4*x);
y2 = x.^2.*cos(3*x);
subplot(1,2,1)
plot(x,y1)
xlabel('x')
ylabel('y')
subplot(1,2,2)
plot(x,y2)
xlabel('x')
ylabel('y')

saveas(gcf,'grafico','png')
saveas(gcf,'grafico','epsc')