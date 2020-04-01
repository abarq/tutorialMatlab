function kt = calcularkt(D,d,r)

    t = (D-d)/2;
    
    dummy1 = 2*t/D;
    dummy2 = t/r;
    dummy3 = sqrt(t/r);

    if (dummy2 <= 2) && (dummy2 >= 0.1)
        
       C1 = 0.926 + 1.157*dummy3 - 0.099*dummy2;
       C2 = 0.012 - 3.036*dummy3 + 0.961*dummy2;
       C3 = -0.302 + 3.977*dummy3 -1.744*dummy2;
       C4 = 0.365 -2.098*dummy3+0.878*dummy2;
       kt = C1 + C2*dummy1 + C3*dummy1^2 + C4*dummy1^3;

    else
        if (dummy2>=2 && dummy2<=20)
            
            C1 = 1.200 + 0.86*dummy3 - 0.022*dummy2;
            C2 = -1.805 - 0.346*dummy3 -0.038*dummy2;
            C3 = 2.198 - 0.486*dummy3 + 0.165*dummy2;
            C4 = -0.593 -0.028*dummy3-0.106*dummy2;
            kt = C1 + C2*dummy1 + C3*dummy1^2 + C4*dummy1^3;

        else
            
            fprintf('No se puede calcular el kt para los parametros dados');
            
        end
      
        
    end

end 