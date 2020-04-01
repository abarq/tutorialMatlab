function Esfuerzos = calcularEsfuerzosCilindros(ri, ro, p, r)

Esfuerzos.tangencial = ri^2*p/(ro^2 -ri^2)*(1+ro^2/(r^2)); 
Esfuerzos.radial = ri^2*p/(ro^2-ri^2)*(1-ro^2/(r^2));

end