%% Exercícios (endereçamento): 
close all
clear all
clc

%% 1. Crie uma matriz A de tamanho 15 x 15 de inteiros.
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
C = A(5:end-1, :)

%% f) Crie uma matriz D formada pelos elementos da sétima até a penúltima linha e 
%% das 3 últimas colunas de A 
D = A(7:end-1, end-2:end)

%% g) Crie uma matriz E formada pelas linhas pares e colunas múltiplas de 3 de A 
E = A(2:2:end, 3:3:end)

%% h) Crie uma matriz F formada pelas linhas 1 a 7 e mais a 13 e pelas colunas 4, 5 e 1 de A 
F = A([1:7 13], [4 5 1])

%% 2. Assuma que a matriz C seja definida como abaixo e determine o conteúdo das seguintes submatrizes.
%% Descubra a saída dos comandos antes de executá-los. 
C = [1.1 -3.2 3.4 0.6 
     0.6 1.1 -0.6 3.1
     1.3 0.6 5.5 0.0]
 
%% a) pega os todos elementos da linha 2
C(2, :) 

%% b) pega os todos elementos da última coluna
C(:, end) 

%% c) pega os elementos da linha 1 e 2 das colunas 2 até a última
C(1:2, 2:end) 

%% d) pega o elemento 6, lido em coluna
C(6) 

%% e) pega a partir do elemento 4 até o final, lido em coluna, retorna um vetor
C(4:end) 

%% f) pega os elementos da linha 1 e 2 das colunas 2 até 4
C(1:2, 2:4) 

%% g) pega os elemento da linha 1 e 3 da coluna 2
C([1 3], 2) 

%% h) pega os elemento da linha 2 e 2 das colunas 3 e 3
C([2 2], [3 3]) 

%% 3. Determine a saída no command window após a execução dos comandos abaixo.
% Descubra a saída dos comandos antes de executá-los. 

% gera uma matriz 3x3
A = [1 2 3; 4 5 6; 7 8 9]

% coloca a linha 1 na linha 3 e a linha 3 na linha 1
A([3 1], :) = A([1 3], :) 

% coloca a linha 2 na linha 1 e a linha 2 na linha 3
A([1 3], :) = A([2 2], :) 

% coloca a coluna 2 na matriz A, a matriz agora terá tamanho 3x2
A = A(:, [2 2]) 

%% 4. Determine o conteúdo da matriz A após a execução das seguintes declarações. 
% Descubra a saída dos comandos antes de executá-los.

% a)
A = eye(3,3);
b = [1 2 3]; 
A(2, :) = b; 

novoA = [1 0 0
         1 2 3
         0 0 1]

A

%% b)
A = eye(3,3);
b = [4 5 6]; 
A(:, 3) = b'; 

novoA = [1 0 4
         0 1 5
         0 0 6]

A

%% c)
A = eye(3,3);
b = [7 8 9]; 
A(3, :) = b([3 1 2]); 

novoA = [1 0 0
         0 1 0
         9 7 8]

A
