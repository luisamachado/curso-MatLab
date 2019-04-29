%% 1. Crie uma matriz A de tamanho 15 x 15 de inteiros.
close all
clear all
clc

A = randi([1 9], 15, 15)

%% a) Extraia o elemento da segunda linha e quarta coluna de A, armazenando na variável u 
u = A(2,4)

%% b) Crie um vetor v formado pelos elementos da segunda coluna de A 
v = A(:, 2)

%% c) Crie um vetor w formado pelos elementos da última linha de A 
w = A(end, :)

%% d) Crie uma matriz B formada pelos elementos da segunda até a décima coluna de A 
B = A(:, 2:10)

%% e) Crie uma matriz C formada pelos elementos da quinta até a penúltima linha de A 
%% f) Crie uma matriz D formada pelos elementos da sétima até a penúltima linha e das 3 últimas colunas de A 
%% g) Crie uma matriz E formada pelas linhas pares e colunas múltiplas de 3 de A 
%% h) Crie uma matriz F formada pelas linhas 1 a 7 e mais a 13 e pelas colunas 4, 5 e 1 de A 

%% 2. Assuma que a matriz C seja definida como abaixo e determine o conteúdo das seguintes submatrizes. Descubra a saída dos comandos antes de executá-los. 
C = [1.1 -3.2 3.4 0.6 
     0.6 1.1 -0.6 3.1
     1.3 0.6 5.5 0.0]
 
%% a) C(2, :) 
%% b) C(:, end) 
%% c) C(1:2, 2:end) 
%% d) C(6) 
%% e) C(4:end) 
%% f) C(1:2, 2:4) 
%% g) C([1 3], 2) 
%% h) C([2 2], [3 3]) 

%% 3. Determine a saída no command window após a execução dos comandos abaixo.
% Descubra a saída dos comandos antes de executá-los. 

A = [1 2 3; 4 5 6; 7 8 9] 

A([3 1], :) = A([1 3], :) 

A([1 3], :) = A([2 2], :) 

A = A(:, [2 2]) 

