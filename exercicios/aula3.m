clear all
close all
clc

%% 1) Defina as matrizes abaixo: 
A = [1, 2, 3, 4, 5; 
    6, 7, 8, 9, 10;
    11, 12, 13, 14, 15;
    16, 17, 18, 19, 20]

B = [1/2, 1/3;
    1/4, 1/5;
    1/6, 1/7;
    1/8, 1/9]

C = [-1/12, 1/-3;
    0, 0;
    1, 17;
    2, 19]

D = [sqrt(2); pi; eye(1); sqrt(3); 42]

%% 2) Para as matrizes acima, realize as operações abaixo: 
a = B + C

b = A * D

c = C * B' * A

X = B' * C

e = X^2

f = B .* C

%% 3) Crie o vetor v = [1 4 9 16 25 ... 81 100]. 
v = [1: 10].^2

%% 4) Crie o vetor v = [2 4 8 16 32 ... 512 1024] sem utilizar o comando logspace. 
v = 2.^[1: 10]

%% 5) Utilize o MATLAB para calcular 12! (isto é, o fatorial do número 12)
% sem utilizar o comando factorial. 
fatorial = prod(1: 12)

%% 6) O número harmônico Hn é definido como sendo a soma 1 + 1/2 + ... + 1/n. 
% Utilize o MATLAB para calcular H100. 
v = 1./[1: 100];
Hn = sum(v)

%% 7) Seja x = 1 + 1/4 + 1/9 + 1/16 + 1/25 + ... + 1/10000^2. 
% Calcule x. Em seguida, calcule sqrt(6x). 

aux = 1 ./ [1: 10000];
xx = aux.^2;
x = sum(xx);
sqrt(6 * x)
