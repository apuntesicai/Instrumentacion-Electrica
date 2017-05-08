condensador = xlsread('cond'); 
plot(condensador(:,1),condensador(:,2),'linewidth',2)
title('Transitorio de descarga de un Condensador 50 \muF (\tau=40 ms)')
legend('CH1')
xlabel('t(ms)')
ylabel('U(V)')
grid on
set(gca,'gridlinestyle','--','linewidth',1)
ax = gca
ax.GridAlpha = 1 %//(or 1 i have forgotten how alpha works).