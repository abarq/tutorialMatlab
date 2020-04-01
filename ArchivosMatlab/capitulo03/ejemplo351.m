% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
clc
close all

x = (-1:0.1:1);
y = (-1:0.1:1);

[X,Y] = meshgrid(x,y);
Z = 3*X.*Y.^2;
subplot(1,2,1)
contour(X,Y,Z,30)
xlabel('x')
ylabel('y')
colorbar
colormap(jet(256))
subplot(1,2,2)
surf(X,Y,Z)
xlabel('x')
ylabel('y')
zlabel('z')
colorbar
colormap(jet(256))