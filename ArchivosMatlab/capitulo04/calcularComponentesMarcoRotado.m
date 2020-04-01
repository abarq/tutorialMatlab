function componentesVectorNuevoMarco = calcularComponentesMarcoRotado(componentesVector,angulo)

matrizRotacion = [cos(angulo) sin(angulo); -sin(angulo) cos(angulo)];
componentesVectorNuevoMarco = matrizRotacion*componentesVector';

end