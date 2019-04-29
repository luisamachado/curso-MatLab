close all
clear all
clc

format compact

%% Variáveis lógicas (booleanas): 
true
false

x = 0 % tipo double
y = false % tipo booleano

%% converte para lógico:
% só o 0 será zero lógico, qualquer número diferente de 0 é um lógico
logical(200)
logical(-123)
logical(1)
logical(3.14)
logical(0)
logical([pi 0 10])
logical([pi 0 10; 10 9 0])

%% Endereçamento lógico de vetores e matrizes:
% Relembrando:
A = randi([0 9], 2, 3)
% endereçamento indice
A(3)
% endereçamento subscrito
A(1,2)

% endereçamento lógico
A([true true false; false true false])
A([true true false false true false])

% matriz e vetor booleano
[true true false; false true false]
[true true false false true false]

%%
v = randi([100 199], 1, 6)
% indexando por posição
v([2 4 5])
% endereçamento lógico
v([false true false true true false])

v([0 1 0 1 1 0])
v(logical([0 1 0 1 1 0]))
v([1 1 1 1 1 1])

%% Operadores relacionais:
4 < 6
4 >= 6
5 == 5
q = 1000
q == 1000
q ~= 1000

%% Operadores lógicos:
% e (and)
true & true
true & false
false & false

% o resultado da multiplicação é um número
true * true
false * false

% ou (or)
true | true
true | false
false | false

% não (not)
~false
~true

% ou exclusivo (xor)
xor(true, true)
xor(true, false)
xor(false, false)

% não com ou exclusivo
~xor(true, false)
~xor(true, false)
~xor(false, false)

%%
q = 1000
(500 <= q) & (q <= 1500)

w = 2000
(500 <= w) & (w <= 1500)
(500 <= w) | (w <= 1500)

[1 2 3] > [2 3 1]
[1 2 3] > 2
[1 2 3] > 1

[1 2 3] > 2 & [1 2 3] > 3
[1 2 3] >= 2
[1 2 3] >= 3
[1 2 3] >= 2 & [1 2 3] >= 3

%%
v = [1 2 3]
w = [1 0 3]

v == w
all(v == w)
any(v == w)

all([true false false true])
any([true false false true])
any([true false false false])

%%
x = [randi([0 9], 1, 10) 4 1 0]
findstr(x, [4 1])

%%
Z = zeros(3, 5)
Z == 0
all(Z == 0)
all(all(Z == 0))
all(Z(1:end) == 0)

Z2 = Z
Z2(2, 2) = 0.0001
all(Z2 == 0)
all(all(Z2 == 0))

%%
v
w
isequal(v, w)
isequal(zeros(3, 5), Z)
isequal(zeros(3, 5), 0) % devem ter a mesma dimensão

u = [1 2 3 4]
%all(v == u) % devem ter a mesma dimensão
isequal(v, u) % devem ter a mesma dimensão

%% comparação de strings:
s1 = 'Eu quero um paozinho';
s2 = 'ovo';
s3 = 'eva';

%s1 == s2 % tem a mesma dimensão
s2 == s3
strcmp(s1, s2)
strcmp(s2, s3)
strcmp(s2, s2)

s4 = 'Eva';

strcmp(s3, s4)

strcmpi(s3, s4) % não sensível a maiúsculo e minúsculo

findstr(s1, 'paozinho')
findstr(s1, 'ovo')

r = 'anotaramadatadamaratona'
strcmp(r, fliplr(r))

lower('Ola')
upper('Ola')

'a':'z'
'a':2:'z'

r1 = 'anotaram a data da maratona?'
r1('a' <= r1 & r1 <= 'z')

r1(r1 == 'a' | r1 == 'e' | r1 == 'i' | r1 == 'o' | r1 == 'u' | r1 <= ' ')

r2 = 'Anotaram a data da maratona?'
r2(('a' <= r2 & r2 <= 'z') | ('A' <= r2 & r2 <= 'z'))
r2('a' <= lower(r2) & lower(r2) <= 'z')

%% Find
r = 'anotaram a data da maratona?'
find(r == 'd')
%find(r == 'da')

s = 'casa'
find(s == 'cama')
find([true true false true false])
