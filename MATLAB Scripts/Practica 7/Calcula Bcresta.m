% Laboratorio de Instrumentación. 
% Práctica 7
% 22 de noviembre de 2016

%% Calculo del campo magnético B de cresta a partir de la tensión U_B 
% medida con el VOLTIMETRO
% (Tabla 3, fila 1)

N_ind = 329;% espiras
S = 0.92e-4; % m^2
f = 50; % HZ
U_B = [2.68 3.35 4.04 5.40 6.06 6.76 7.42 8.09  9.42 10.09]; % Vector de tensiones medidas

fprintf('Campo B cresta con U_B\n')
for i=1:length(U_B)
    B_cresta_U_B(i) = U_B(i)/(4.44*N_ind*S*f);
    fprintf('para una tensión de U_B=%.2f (V): %.4f (T)\n', U_B(i), B_cresta_U_B(i));
end
fprintf('\n')
%% Calculo del campo magnético B de cresta a partir de la tensión U_CH2 
% medida con el OSCILOSCOPIO
% (Tabla 3, fila 2)

N_ind = 329;% espiras
S = 0.92e-4; % m^2
f = 50; % HZ
R_2 = 100e3; % Ohmios
C = 2e-6; % Faradios

U_CH2 = [70 79 96 125 140 155 170 185 220 232]; % (mV)
U_CH2 = U_CH2*(1e-3);% Tensiones de pico medidas en el osciloscopio (Voltios)
fprintf('\n')
fprintf('Campo B cresta con U_CH2\n')
for i=1:length(U_B)
    B_cresta_U_CH2(i) = R_2*C*U_CH2(i)/(N_ind*S);
    fprintf('Para una tensión de U_CH2=%.2f (V): %.4f (T)\n', U_CH2(i), B_cresta_U_CH2(i));
end
