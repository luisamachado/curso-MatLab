close all
clear all
clc

%% Vetores:
format compact

%% As próximas duas linhas são equivalentes:
vet1 = [1 2 3 4 5 6.1]
vet2 = [7, 8, 9, 10]

%% Vetor coluna:
vet3 = [1; 2; 3.4; 4; 5; 6]

%% Matrizes:
mat1 = [1 2 3 4.5; 5 6 7 8]

mat2 = [-1 -2.5 3 4
        5 6 -7 -8]

%% Tamanho - retorna a maior dimensão da matriz:
length(vet1)
length(vet2)
length(vet3)
length(mat1)
length(mat2)

%% Tamanho - retorna o tamanho de todas as dimensões:
size(vet1)
size(vet2)
size(vet3)
size(mat1)
size(mat2)

%% Arranjos de vetores:
vet5 = 1:6
vet6 = 1:0.5:6
vet7 = 1:2:6
vet8 = 1:15:10

vet9 = 1:1 + 3:10
vet9 = 1:(1 + 3):10

vet10 = 1:(6-1)/9:6 % equivalente ao linspace

%% Linspace:
vet = linspace(4,8,10)
% 4 primeiro elemento do vetor
% 8 último elemento do vetor
% 10 tamanho do vetor

%% Logspace:
format bank % formato com dois números após a virgula
vetLog = logspace(2, 3, 5)
vetLogDecresc = logspace(3, 1, 10)
logspace(1, 4, 5)

%% Matrizes especiais:
format % formato padrão

% Matriz identidade:
mat_Id = eye(10)

% Pedaço da matriz identidade:
ped_Id = eye(4, 10)

% Matriz de 0's:
mat_zero = zeros(3, 5)
mat_zero = zeros(5) % matriz quadrada

% Matriz de 1's:
mat_um = ones(3, 5)
mat_um = ones(5) % matriz quadrada

% Matriz de um único número:
mat_nove = 9*ones(3, 5)

% cria uma matriz de 0's do tamanho do mat_nove
zeros(size(mat_nove)) 

% cria uma matriz de 1's do tamanho do vet2
ones(size(vet2)) 

% cria uma matriz quadrada de 1's do tamanho da maior dimensão de vet2
ones(length(vet2)) 

% Transposto (')
mat_tr = mat_nove'
mat2 = 1:3:10 % não está transposto
mat2_tr = (1:3:10)'

% Matriz de números complexos
mat3 = [(1+1i) (2); (2+4i) (2-9i); (10) (1i)]
mat3_tr = mat3' % transpõe e conjuga a matriz
mat3_tr = mat3.' % apenas transpõe a matriz

%% Mostrar as variáveis declaradas:
whos
