% Universidad de Costa Rica
% Laboratorio de Mecánica Computacional

clear variables
clc
close all

P = 100000; %Fuerza externa [N]
r = (0.01:0.001:0.04); % radio filetes [m]
D = 0.2; %Diametro externo [m]
d = 0.1; %Diametro interno [m]

id = fopen('Resultados.txt','w');

fprintf(id,'Universidad de Costa Rica\n');
fprintf(id,'Escuela de Ingeniería Mecánica\n\n\n');

fprintf(id,'El diámetro externo es %f. [m]\n',D);
fprintf(id,'El diámetro interno es %f. [m]\n',d);
fprintf(id,'La fuerza aplicada es %f. [N]\n',P);
fprintf(id,'\n\n');

esfuerzoNominal = 4*P/(pi*d^2);
factoresConcentracionEsfuerzos = zeros(1,length(r));
esfuerzoReal = zeros(1,length(r));
fprintf(id,'Radio filete [m] \t Esfuerzo [MPa]\n');
for i=1:length(r)
    
   factoresConcentracionEsfuerzos(i) = calcularkt(D,d,r(i));
   esfuerzoReal(i) =  factoresConcentracionEsfuerzos(i) * esfuerzoNominal;
   esfuerzoReal(i) = esfuerzoReal(i)/1e6;
   fprintf(id, '%f \t\t %f\n',r(i),esfuerzoReal(i));
   
end


plot(r,esfuerzoReal,'-bo','Linewidth',1.5);
xlabel('Radio filete r (m)');
ylabel('Esfuerzo axial [MPa]');
title('Variación del esfuerzo con respecto al radio de filete');
grid on
saveas(gcf,'Esfuerzos en filetes','png')
saveas(gcf,'Esfuerzos en filetes','epsc')

fclose(id);
