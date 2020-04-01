% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all

x = (0:0.1:10);
f = (x.^2.*(1+x))./sqrt(1+x.^2);
plot(x,f,'-k','linewidth',2)
xlabel('Eje x')
ylabel('Eje y')
set(gca,'Fontsize',18)

