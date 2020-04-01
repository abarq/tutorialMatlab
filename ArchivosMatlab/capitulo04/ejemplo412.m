% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

ro = 0.3;
ri = 0.15;
p = 1000;
r = 0.2;

Esfuerzos = calcularEsfuerzosCilindros(ri,ro,p,r);

fprintf('El esfuerzo tangencial es %f Pa\n', Esfuerzos.tangencial);
fprintf('El esfuerzo radial es %f Pa\n',Esfuerzos.radial);