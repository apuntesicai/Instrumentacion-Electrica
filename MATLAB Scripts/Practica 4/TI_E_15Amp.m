datos = xlsread('p415Amper'); 

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
title('Transformador de Intensidad (I_n=15 A)')
L = 2500;
wvtool(hann(L))


m=lenght(t) % número de muestras de la ventana
h = hanning(m);
for i = 1:m ; sh(i) = h(i) * CH2(i)  ; end
plot(t,sh);
