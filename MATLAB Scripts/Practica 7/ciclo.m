datos = xlsread('ciclo.xlsx')
% Tensiones del osciloscpio
U_cresta_H = datos(:,2);
U_cresta_B = datos(:,3);

% Parámetros
N=68;
l = 34e-2;
R1 = 0.1;

% Campo H de cresta
for i=1:length(U_cresta_H)
    H(i) = N*U_cresta_H(i)/(l*R1);
end

% Parámetros de cálculo
R2 = 100e3;
C = 2e-6;

% Campo B de cresta
for i=1:length(U_cresta_B)
    B(i) = U_cresta_B(i)*R2*C/(329*0.92e-4);
end

% Grafica del ciclo
formato_ciclo(H,B);