%% Exercícios: 
close all
clear all
clc

%% 1. Plote em vermelho a função polar
theta = -pi:0.1:pi; 
rho = ((sin(theta) .* sqrt(abs(cos(theta)))) ./ (sin(theta) + 7/5)) - 2 .* sin(theta) + 2;

polar(theta, rho, 'r')

%% 2. Plote o gráfico da função sqrt(x) utilizando todos os quatro tipos de
% combinações de eixos (linear/logarítmico). 
x = -50:0.1:50;
z = sqrt(x);

figure
subplot(221)
plot(x, z)
title('Linear')
grid on

subplot(222)
semilogx(x, z)
title('Semilog X')
grid on

subplot(223)
semilogy(x, z)
title('Semilog Y')
grid on

subplot(224)
loglog(x, z)
title('Loglog')
grid on

%% 3. As seguintes funções descrevem as oscilações em circuitos elétricos e
% as vibrações de máquinas e estruturas. Sobreponha as plotagens dessas 
% funções no mesmo eixo. Como elas são similares, defina qual é a melhor 
% forma de plotá-las e de rotulá-las para evitar confusão.

t = -50:0.1:50;

x_t = 1000 * exp(-0.5 * t) .* sin(3 * t + 2);
y_t = 7 * exp(-0,4 * t) .* cos(5 * t - 3); 

