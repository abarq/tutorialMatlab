% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all
fileID = fopen('datosParaLeer.txt','r');
sizeA = [2 6];
A = fscanf(fileID,'%f %f',sizeA);
valoresX = A(1,:);  
valoresY = A(2,:);

plot(valoresX, valoresY)
fclose(fileID);