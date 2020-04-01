% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc

a = 8;
b = 7;
c = 6;

if ((a>=b) && (b<=c))
    fprintf('a es mayor que b y b es menor que c\n');
else
    fprintf('a no es mayor que b o b no es menor que c\n');
end