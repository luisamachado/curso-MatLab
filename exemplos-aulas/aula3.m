close all
clear all
clc

%% Operações com matrizes:
format compact

A = [1 2; 4 5]
B = [100 200; -100 -200]

AB = A + B

C = [-11 17 13; 45 101 pi]

% C + A % não funciona pois não tem o mesmo número de elementos

BA = A - B
v = [4 6 8 9]
u = 1:4

v - u

%% as 3 linhas abaixo tem mesmo resultado:
A + ones(2)
A + ones(2,2)
A + 1

%% Operações de matrizes com escalares:
A + 0.1
v + 1000
A - 1
v - 2

%% multiplicação matricial:
D = A * B
A * C
v' * u
v * u'

%% multiplicação ponto a ponto:
E = A .* B
% A .* C % não funciona pois não tem o mesmo número de elementos
v .* u
v' .* u'

%% multiplicação por escalar:
A * 100

%% divisão matricial:
A ./ B
B ./ A

%% divisão por escalar:
A / 2

%% divisão de um escalar por uma matriz:
2 ./ A

%% Mais tarde veremos:
% A / B
% B / A

%% Potenciação:
A^2
% equivale:
A * A

% raiz quadrada matricial: ( testado por engano pelo professor)
A ^ 0.5
ans * ans

% v^2 % não funciona pois não tem o mesmo número de elementos

%% Potenciação ponto a ponto:
A .^ 2
v .^ 2
A .^ 0.5
A .^ (-1)
format bank
B .^ A
format short

%% ordem de precedência:
A ./ B .* D
(A ./ B) .* D
A ./ (B .* D)

%% Em geral as operações são elemento a elemento:
cos(C)
sin(C)
log2(u)
sqrt(A) % square root = raiz quadrada

%% sum:
sum(C)
sum(C, 1) % soma todos os elementos das linha com linha

sum(C')

sum(C')'
sum(C, 2) % soma todos os elementos das coluna com coluna

sum(C, 3) % resulta no próprio C

sum(sum(C)) % soma todos os elementos

%%

prod(A)

prod(A, 2)

prod(prod(A))

%%
min(C) % minimo de cada coluna
min(C, 2)
min(C, [], 2)
min(C')'

[m ii] = min(C)

w = [17 11 13 45 -12 50]

m = min(w)
[m ii] = min(w)

w1 = [17 11 13 45 -12 -12 50]

[m ii] = min(w1)

min(min(C))

%% média
sum(u) / 4
sum(u) / length(u)

mean(u)

mean(C)

%% desvio padrão: (Standard deviation)
std(u)

%%
norm(u)
y = [3 4]
norm(y)

%%
det(A)
inv(A)
A * inv(A)

%% pesquisar: lookfor palavra-chave
lookfor deviation

%% Plots
t = 0:0.01:(4*pi);

size(t)

s = cos(t);

figure,
plot(t, s)

%%
u = 1:4
figure,
plot(u, v)

%%
figure,
u = [1 2 4 3]
plot(u, v, 'm')

%% Stem
figure,
stem(t, s)

figure,
stem(u, v, 'm')

figure,
stem(ones(size(v)), v, 'm')

%% Bar
u = 1:4
bar(u, v)

%%
stairs(u, v)

%%
t2 = 0:0.5:4*pi;
s2 = sin(t2);

stairs(t2, s2)

plot(t2, s2)

bar(t2, s2)

stem(t2, s2)

%%
comet(t2, s2)
comet(t, s)

%%
plot(v) % posição do elemento no vetor

u2 = [6 8 10 12]
plot(u2, v)

%%
t3 = linspace(-5,5,100);
f = t3.^2;
plot(t3,f)

%% função obsoleta
% só para conhecer
ezplot('x^2')

%% segurar/manter a figura:
plot(t,s)
hold on
plot(t2,s2, 'm')
hold off

%% grade:
grid on
grid minor

%% label eixos
xlabel('Eixo do tempo [s]')
ylabel('\Omega')

%% titulo
title('Gráfico')

%% fixando os eixos
bar(t2, s2)
axis([0 22 -2 0.5])
title('\pi')

figure
bar(t2, s2)
axis([0 13 -1.1 1.1])

figure
bar(t2, s2)
xlim([0 20])

hold on
plot(t, s)
legend('Barra','Linha')

hold off

%%
plot(t, s, '--')

%%
plot(t, s, '-.')

%%
plot(t, s, '-')

%%
plot(t, s, '.-')

%%
plot(t, s, ':')

%%
plot(t, s, '-.r')

%%
plot(t, s, '-.y')

%%
plot(t, s, '-.kX')

%%
plot(t, s, '-.kX', 'MarkerSize', 8)

%%
plot(t, s, '-.kX', 'MarkerSize', 80)

%% 
whitebg('blue')

%% 
whitebg('white')

%%
subplot(331)
plot(t, s, '-.kh', 'MarkerSize', 20)

%%
subplot(312)
plot(t, s, '-.bh', 'MarkerSize', 10)
