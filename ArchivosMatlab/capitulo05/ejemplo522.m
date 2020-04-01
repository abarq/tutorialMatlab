% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional
clear variables
clc

a = [1 2 3; 4 5 6; 7 8 9];

nFilas = length(a(:,1));
nColumnas = length(a(1,:));

for i=1:nFilas
    
    for j=1:nColumnas
        
        fprintf('La entrada (%d,%d) de la matriz es %f\n',i,j,a(i,j));

    end
    
end

