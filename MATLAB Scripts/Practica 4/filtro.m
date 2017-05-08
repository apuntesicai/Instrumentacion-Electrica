datos = xlsread('p415Amper'); 

t = datos(:,1);
y = datos(:,3);

% Calcula las componentes en frecuencia y dibuja la gráfica de amplitudes
Ts=t(2)-t(1);
Fs=1/Ts;
SenCos=1; % Angulo de la transformada para senoidales
[v_Frec, v_Amp, v_Grad]=NachoFFT(CH2, Fs, SenCos); % Calculo de la FFT

figure;
bar(v_Frec, v_Amp);
xlabel('f(Hz)');
ylabel('Corriente (pu)');
axis([-20, 520, 0, 1.05*max(v_Amp)]);

N=2500;
% Obtenemos la transformada y calculamos su módulo al cuadrado
G=fft(y)/sqrt(N);
Q=abs(G).^2;

% En la transformada, eliminamos los elementos con módulo al cuadrado menores que 10
GT=G.*(Q > 1);
% GT=GT.*(Q > 0.57);
% GT=GT.*(Q > 0.211);
% GT=GT.*(Q > 0.1815);

% Obtenemos la antitrasformada del espectro de potencias "limpiado"
gT=ifft(GT)*sqrt(N );

% Dibujamos la señal original y la procesada
figure, plot(t,y,'r'), xlabel('tiempo') , title('señal original')
figure, plot(t,gT), xlabel('tiempo') , title('señal a la que se ha quitado el ruido')

% Calcula las componentes en frecuencia y dibuja la gráfica de amplitudes
Ts=t(2)-t(1);
Fs=1/Ts;
SenCos=1; % Angulo de la transformada para senoidales
[v_Frec, v_Amp, v_Grad]=NachoFFT(gT, Fs, SenCos); % Calculo de la FFT

figure;
bar(v_Frec, v_Amp);
xlabel('f(Hz)');
ylabel('Corriente (pu)');
axis([-20, 520, 0, 1.05*max(v_Amp)]);

