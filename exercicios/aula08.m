%% Exercícios: 
close all
clear all
clc

%% 1. Sejam x = [1 7 5 3 8 2] e y = [1 8 2 3 9 1]. Encontre os resultados dos seguintes
% comandos antes de executá-los:

x = [1 7 5 3 8 2]
y = [1 8 2 3 9 1]

% a) verifica se tem algum número menor que 6 e coloca o resultado 
% um vetor lógico da comparação em z
z = x < 6 

% b) verifica se ponto a ponto se x menor ou igual a y e coloca o resultado 
% um vetor lógico da comparação em z
z = x <= y 

% c) verifica se x é igual a y e coloca o resultado um vetor lógico da comparação em z
z = x == y 

% d) verifica se x não é igual a y e coloca o resultado um vetor lógico da comparação em z
z = x ~= y 
 
%% 2. A tabela abaixo mostra as temperaturas diárias (em Celsius) em três cidades diferentes. 
dias =    [1  2  3  4  5  6  7]
tabela = [10 13  6  5 -1 10  4  % Palhoça
          19 13  3  5  1 22 14  % São José 
          30  2	 3 -1 10 -2 40] % Biguaçu
% Determine em quais dias:
% a) A temperatura na Palhoça é maior que 8 °C.
a = dias(tabela(1,:) >= 8)

% b) A temperatura em São José se encontra entre 1 °C e 15 °C (incluindo ambos os extremos). 
b = dias((1 <= tabela(2,:)) & (tabela(2,:) <= 15))

% c) Fez mais frio na Palhoça que em São José.
c = dias(tabela(1,:) < tabela(2,:))

% d) Biguaçu foi a cidade mais quente de todas. 
d = dias(tabela(3,:) > tabela(1,:) & tabela(3,:) > tabela(1,:))

%% 3. A altura e a velocidade de um projétil lançado com uma velocidade vo e um ângulo com a
% horizontal a são dadas, em funcão do tempo t, respectivamente, em que g é a aceleração da gravidade.
% O projétil atinge o solo quando h(t) = 0, o que ocorre no tempo t_hit = − 2(v0 / g)sen(a). 
% Suponha que a = 30°, vo = 40 m/s e g = − 9,81 m/s².
g = -9.81;
a = 30;
vo = 40;

t_hit = -2*(vo / g)*sind(a);
t = 0:0.1:t_hit;

h_t = vo .* t .* sind(a) + (1/2) .* g .* t.^2;
v_t = sqrt(vo^2 + 2 .* vo .* g .* t .* sind(a) + g^2 .* t.^2);

% a) Plote os gráficos da altura e da velocidade do projétil, de t = 0 até t = t_hit.
figure,
subplot(211)
plot(t, h_t)
title('Altura x Tempo')
xlabel('Tempo [s]')
ylabel('Altura [m]')

subplot(212)
plot(t, v_t)
title('Velocidade x Tempo')
xlabel('Tempo [s]')
ylabel('Velocidade [m/s]')

% b) Determine os instantes de tempo em que a altura é de no mínimo 15 m.
b = t(h_t >= 15)

% c) Determine os instantes de tempo em que a altura é de no mínimo 15 m e, ao mesmo tempo, a 
% velocidade é de no máximo 36 m/s. 
c = t(15 <= h_t & v_t <= 36)

% d) Determine os instantes de tempo em que a altura é de no mínimo 15 m ou a velocidade é de no 
% máximo 36 m/s. 
d = t(15 <= h_t | v_t <= 36)

% e) Destaque as figuras anteriores com os intervalos calculados na letra c). 
h = h_t(15 <= h_t & v_t <= 36)
v = v_t(15 <= h_t & v_t <= 36)

figure,
subplot(211)
plot(t, h_t)
hold on
plot(c, h, 'm')
title('Altura x Tempo')
xlabel('Tempo [s]')
ylabel('Altura [m]')

subplot(212)
plot(t, v_t)
hold on
plot(c, v, 'm')
title('Velocidade x Tempo')
xlabel('Tempo [s]')
ylabel('Velocidade [m/s]')
