datos = xlsread('p4carga'); 

t = datos(:,1);
CH1 = datos(:,2);
CH2 = datos(:,3);
yyaxis left
plot(t,CH1)
legend('CH1 (I)')
yyaxis right
plot(t,CH2)
grid on

ensayo_en_carga(t,CH1,CH2)
