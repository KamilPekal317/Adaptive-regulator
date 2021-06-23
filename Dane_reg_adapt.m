clc;
clear all;

%Adaptacyjny regulator neuronowy:
Tm = 0.2;
Te = 0.001;

%Nastawy klasycznego PID:

Kgr = 10;
tosc = 0.0281;

Ti = 0.5*tosc;
Td = 0.12*tosc;

%Idealne:
Kp = Kgr*0.6
Ki = Kp/Ti
Kd = Kp*Td

%Do adaptacji:
Kp1 = 7;
Ki1 = 350;
Kd1 = 0.09;

%Model odniesienia
ksi = 0.9;
omega = 40;

%Wspó³czynnik uczenia:
alfa = 100;
gamma = 0.005;

%Wagi pocz¹tkowe:
W1init = -1*0.1;
W2init = 0.2;
W3init = 0.3;
W4init = -1*0.4;
W5init = -1*0.5;
W6init = 0.6;

%Wykresy:
figure
plot(czas,Adap_neuro);
grid on;
ylabel(" w[p.u]");
xlabel("t[s]");
legend("Tm","2Tm","4Tm","0.5Tm");

figure
plot(czas,Neuro);
grid on;
ylabel(" w[p.u]");
xlabel("t[s]");
legend("w_{ref}","w_{neuro}");



%Regulatora PID z opóŸnieniami:
%Kp_init = 4;
%Ki_init = 50;
%Kd_init = 0.01;

%alpha_p = 0.01;
%alpha_i = 0.01;
%alpha_d = 0.00001;

%Regulator PID z ca³kami:
%Kp_init = 4;
%Ki_init = 50;
%Kd_init = 0.01;

%alpha_p = 100;
%alpha_i = 100;
%alpha_d = 0.001;

