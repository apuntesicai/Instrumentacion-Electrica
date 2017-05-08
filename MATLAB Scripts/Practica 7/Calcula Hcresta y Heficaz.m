% Laboratorio de Instrumentación. 
% Práctica 7
% 22 de noviembre de 2016

%% Calculo del campo H eficaz a partir de la tensión U_H 
% medida con el VOLTIMETRO 1, en R1
% (Tabla 3, fila 3)

N_exc = 68;% espiras
S = 0.92e-4; % m^2
f = 50; % Hz
l = 34e-2; % m
U_H = [3.58 4.9 5.62 6.01 6.59 7.18 7.78 8.45 10.22 11.84 ]; % Vector de tensiones medidas (Volt)
R_1 = 0.1; % ohmios

fprintf('Campo H eficaz\n')
for i=1:length(U_H)
    H_eficaz_U_H(i) = N_exc*U_H(i)*(1e-3)/(l*R_1);
    fprintf('Para una tensión de U_H=%.2f (V): %.4f (A/m)\n', U_H(i), H_eficaz_U_H(i));
end
fprintf('\n')

%% Calculo del campo magnético H de cresta a partir de la tensión U_CH2 
% medida con el OSCILOSCOPIO, en Canal II
% (Tabla 3, fila 4)

N_exc = 68;% espiras
S = 0.92e-4; % m^2
f = 50; % Hz
l = 34e-2; % m
R_1 = 0.1; % ohmios

U_CH1 = [7 8 8.9 9.8 10.5 11.6 11.7 12.1  13.2 17.2]; % Tensiones de pico medidas en el osciloscopio (mV)

fprintf('Campo H de cresta\n')
for i=1:length(U_CH1)
    H_cresta_U_CH1(i) = N_exc*U_CH1(i)*(1e-3)/(l*R_1);
    fprintf('Para una tensión de U_CH2=%.2f (V): %.4f (A/m)\n', U_CH1(i), H_cresta_U_CH1(i));
end
