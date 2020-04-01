% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all
fileID = fopen('resultados.txt','w');
x=(0:1:180);
x=x*pi/180;
y=sin(x);
fprintf(fileID,'%f %f\n',x,y);

fclose(fileID);