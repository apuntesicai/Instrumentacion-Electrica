datos = xlsread('Libro1.xlsx')
h_eficaz = datos(:,1);
h_cresta = datos(:,4);
B_cresta = datos(:,5);

% Curva Hcresta-Bcresta y Heficaz-Bcresta 
% figure (1)
scatter(h_eficaz,B_cresta,'g');
hold on
% figure (2)
scatter(h_cresta, B_cresta,'b');
grid on
hold on 

% Curva de potencias
% formato_curvasBH(h_eficaz,B_cresta,h_cresta,B_cresta)
