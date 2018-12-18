close all
clear all
clc

%% Endereçamento de matrizes e vetores
format compact

%% Indexação de um elemento:

v = [6 2 5 2 5 1 666]

v(3)

v(7)

v(1)

% v(10) % erro pois não existe esta posição neste vetor: Index exceeds matrix dimensions. 

a = v(2)

v(6) + v(7)

w = [2000; 3000; 4000; 9999]

v(3) + w(2)

% v + w % Error using  + Matrix dimensions must agree. 

%% Subscrito:
A = [0.1 0.3 0.4
      -1  -5  -8]
  
size(A)

A(2, 3)
A(1, 3)

% A(3, 3) % erro pois não existe esta posição nesta matriz: Index exceeds matrix dimensions.

%% Índice:
A(1)
A(2)
A(6)
% A(7) % erro pois não existe esta posição nesta matriz: Index exceeds matrix dimensions.

%% Submatrizes / subvetores:

%% Indexação do lado direito
%% Subvetores:
v

v(2:6)
v([2 3 4 5 6])
v([2 3 5 6])
v(2:2:6)
v([3 3 1 7 1])
v([1 3 5 7])
v(1:2:7) % forma mais utilizada

v(7:-1:1)
v(7:-2:1)

v(3:end)
v(2:6)

%% Subscrito
A = [0.1 0.3 0.4  10
      -1  -5  -8   9
       4   6   5   5]

A(2, 1:3)
A(2, :)
A(2, 2:3)

A(:, 2)
A(1:2, 2)

A
A(1:3)
A((1:3)')

A(2:3, :)
A(1:3, 2:3)

var = 2:3
A(var, var + 1)

A(1:2:3, :)
B = A(1:2:3, 4:-1:1)

A(1:2:end, :)
A(1:2:end, 2:end)
A(1:2:end, 2:end-1)

B(:, 1:end/2)
B(:, end)
B(end, :)
B(:, end/2) % end = 4 neste caso, logo end/2 = 2

v(end:-1:1)

A
A(:, end:-1:1)

A(:, [4 1 2 3])

A(:, [end 1:end-1])

circshift(A, 1, 2) % desloca em coluna
circshift(A, 1, 1) % desloca em linha

circshift(A, 2, 2) % desloca em coluna
circshift(A, -1, 2) % desloca em coluna

circshift(circshift(A, 1, 2),1 ,1) % desloca em coluna
circshift(A, [1 1]) % desloca em coluna

C = A(2:3, 2:3)

aux = A(2,3)

%% Indexação do lado esquerdo
A(2,3) = 20

A(2,:) = 10
A(:,2) = 3

diag(A)

eye(size(A))

d = A .* eye(size(A))

sum(d)

A([1 2], [1 2])

A(1:6:end) = 33
A(1:size(A,1)+1:min(size(A))^2) = 55

A(2, :) = -1

A(2, :) = 4:-1:1
A(3, :) = 8:-1:5

A(3, :)

A(3, :) = A(3, :) + 1

A(3, :) = A(3, :) - [2:5]

A(2:3,3:4) = eye(2)

diag(A) .* A(:,1)

%% Exclusão de linhas e colunas:

A
A(:,3) = []
A(2,:) = []

%% Criar matriz aleatória:
C = randi([1 9], 3, 4)
C = randi(9, 3, 4)