%% Exercícios: 
close all
clear all
clc

%% 1. A tabela a seguir mostra o salário por hora, as horas de trabalho e a produção
% (número de dispositivos produzidos) em uma semana para cinco fabricantes de dispositivos. 
% Utilize o MATLAB para responder essas questões:
format bank
tabela = [5.0  5.5  6.5  6.0  6.25  % salario por hora
          40   43   37   50   45    % horas de trabalho 
          1000 1100 1000 1200 1100] % produção

%% a) Quanto cada trabalhador recebeu na semana? 
salario_t = tabela(1,:) .* tabela(2,:)

%% b) Qual foi o salário total pago?
salario_total = sum(salario_t)

%% c) Quantos dispositivos foram fabricados? 
dispositivos_total = sum(tabela(3,:))

%% d) Qual é o custo médio para se produzir um dispositivo? 
format long
custo_medio = salario_total/dispositivos_total

%% e) Quantas horas são necessárias, em média, para se produzir um dispositivo? 
hora_media = sum(tabela(2,:))/dispositivos_total

%% f) Assumindo que a produção de cada trabalhador tenha a mesma qualidade, qual trabalhador
% é o mais eficiente? Qual é o menos eficiente? 
mais = min(tabela(3,:)./salario_t)
menos = max(tabela(3,:)./salario_t)

%% 2. A aproximação de Bhaskara I para a função seno em graus é dada por: 

x = 0:180;

sin_x = (4 .* x .* (180 - x))./(40500 - (x .* (180 - x)));

% Crie uma figura contendo 3 plots:
% A função seno original
% A aproximação de Bhaskara I
% O erro da aproximação 

sin_orig = sind(x);

figure,
plot(x, sin_x)
hold on
plot(x, sin_orig)
legend('aproximação', 'seno', 'Location', 'south')
hold off

erro = sin_orig - sin_x;
figure,
plot(x, erro)
title('Erro')

%% 3. Se uma bola é lançada da altura ho = 28 m acima da superfície da terra, com velocidade vertical
% vo = 20 m/s, a posição e a velocidade da bola como função no tempo serão dadas pelas equações,
% onde g é a aceleração da gravidade (-9,81 m/s²). Escreva um programa de MATLAB que desenhe a altura 
% e a velocidade como função do tempo, utilizando o comando subplot. 
ho = 28; % m
vo = 20; % m/s
g = -9.81; % m/s²

t = 0:0.1:6;

h_t = (1/2 * g .* t.^2) + vo .* t + ho;
v_t = g .* t + vo;

% Faça com que ho e vo sejam parâmetros da script. Não deixe de incluir as legendas apropriadas. 
figure,
plot(t, h_t)
hold on
plot(t, v_t)
legend('altura', 'velocidade', 'Location', 'southwest')

%% 4. Joãozinho depositou vp = BRL 1.000,00 num fundo de investimento com taxa de juros j = 0,8% ao mês. 
% Faça um gráfico do saldo do investimento. Em quanto tempo o valor depositado será dobrado? Dica: (link) 
vp = 1000.00; % reais
j = 0.008;

t = 1:87;

saldo = vp*(1 + j).^t