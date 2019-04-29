close all
clear all
clc

format bank

%% 1. Crie os vetores descritos abaixo usando dois métodos diferentes:
% a) Início: 5, Fim: 28, com 100 elementos regularmente espaçados 
a11 = 5:((28 - 5) / 99):28
a12 = linspace(5, 28, 100)
length(a11)
length(a12)

% b) Início: 5, Fim: 14, com passo de 0,2. 
b1 = 5:0.2:14
length(b1)

% c) Início: -2, Fim: 5, com 50 elementos regularmente espaçados 
c11 = -2:((5 - (-2)) / 49):5
c12 = linspace(-2, 5, 50)
length(c11)
length(c12)

% d) Início: 100, Fim: 12, com 100 elementos regularmente espaçados 
d11 = 100:((12 - 100) / 99):12
d12 = linspace(100, 12, 100)
length(d11)
length(d12)

%% 2. Crie os vetores descritos abaixo:
% a) Início: 10, Fim: 1000, com 50 elementos logaritmicamente espaçados 
a2 = logspace(1, 3, 50)

% b) Início: 0,01, Fim: 1, com 20 elementos logaritmicamente espaçados 
b2 = logspace(-2, 0, 20)

%% 3. Crie um vetor x que tenha 6 valores entre 0 e 10.
% Em seguida, crie uma matriz A cuja primeira linha contenha 
% os valores 3x e segunda linha contenha os valores 5x - 20. 

x = linspace(0, 10, 6)
A = [3*x; 5*x - 20]

%% 4. Repita o exercício anterior, substituindo a palavra linha por coluna.
x_tr = x'
a = [3*x_tr (5*x_tr - 20)]

%% 5. Crie o vetor v = [2 4 8 16 32 ... 512 1024] utilizando o comando logspace.
v = logspace(log10(2), log10(1024), 10)
