datos = xlsread('p43Amp'); 

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
title('Transformador de Intensidad (0.2\cdot I_n=3 A)')