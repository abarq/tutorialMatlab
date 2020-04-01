% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

clear variables
close all
clc
ri = 0.15;
p = 50000;
ro = (0.3:0.05:0.45);


for i=1:length(ro)

    r = linspace(ri,ro(i),100);
    esfuerzoTangencial= zeros(1,100);
    esfuerzoRadial = zeros(1,100);
    
    for j=1:length(r)
        Esfuerzos = calcularEsfuerzosCilindros(ro(i),ri,p,r(j));
        esfuerzoTangencial(j) = Esfuerzos.tangencial;
        esfuerzoRadial(j) = Esfuerzos.radial;
    end
    
    subplot(2,2,i)
    plot(r,esfuerzoTangencial,'b-','Displayname','Esfuerzo tangencial')
    hold on
    plot(r,esfuerzoRadial,'r-','Displayname','Esfuerzo radial')
    xlabel('Distancia radial (m)')
    ylabel('Esfuerzo (Pa)')
    set(gca,'xLim',[ri, ro(i)])
    legend('boxoff');
    legend('location','best')
end
saveas(gcf,'Esfuerzos en pared gruesa','png')
saveas(gcf,'Esfuerzos en pared gruesa','epsc')
