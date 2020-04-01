% Universidad de Costa Rica
% Laboratorio de Mecanica Computacional

x = (0:0.1:3);

f1 = cos(x);
f2 = sin(x);
f3 = x.^2+x+1;
f4 = x.^3+x.^2+x+1;

subplot(1,2,1)
plot(x,f1,'-b','Displayname','f1')
hold on
plot(x,f2,'-r','Displayname','f2')
xlabel('Eje x')
ylabel('Eje y')
legend()
legend('boxoff')
legend('Location','best')
subplot(1,2,2)
plot(x,f3,'-k','Displayname','f3')
hold on
plot(x,f4,'-g','Displayname','f4')
xlabel('Eje x')
ylabel('Eje y')
legend()
legend('boxoff')
legend('Location','best')
set(gcf,'units','normalized','position',[0.2 0.2 0.4 0.4])
