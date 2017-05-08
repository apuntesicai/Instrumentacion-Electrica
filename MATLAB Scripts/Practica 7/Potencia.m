% Laboratorio de Instrumentación. 
% Práctica 7
% 22 de noviembre de 2016

%% Calculo de la potencia consumida en VA/kg siendo
% S = Uef*Ief
% Tabla 3, Fila 5
l = 34e-2; % m
N_exc = 68;
s = 0.92e-4; % m^2
rho = 7650; % Densidad kg/m3
volumen = l*s;
masa = rho * volumen;

% tension eficaz de entrada al anillo
% U_B: tensión leída en el voltimetro 2
U_ef = U_B*N_exc/N_ind; % Pasamos la tensión baja

% Intensidad eficaz de entrada al anillo
% H eficaz calculado en R1 
I_ef = H_eficaz_U_H*l/N_exc;

% Potencia (VA) de entrada al anillo
S = U_ef.*I_ef;

% potencia por kg (VA/kg)
S_kg = S/masa;
for i=1:length(S_kg)
fprintf('S= %.2f (VA)\n', S_kg(i))
end
formato_potencia(B_cresta_U_CH2,S_kg)
