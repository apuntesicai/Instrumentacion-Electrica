datos = xlsread('prueba'); 

x = datos(:,1);
y = datos(:,2);
yyaxis left
plot(x,y)
legend('CH1 (I)')
z = datos(:,3);
yyaxis right
plot(x,z)
grid on
set(gca,'gridlinestyle','--','linewidth',1)
set(gca,'xcolor',[0 0.5 0])
set(gca,'ycolor',[0 0.5 0])
ax = gca
ax.GridAlpha = 1 %//(or 1 i have forgotten how alpha works).
impedancia_oscilo(datos(:,1),datos(:,2),datos(:,3))