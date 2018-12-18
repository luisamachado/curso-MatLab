close all
clear all
clc

%% Concatenação de vetores e matrizes 
format compact

A = [1 2 3
     4 5 6]
B = [7   8
     9 -11]

size(A)
size(B)

C = [A B]
size(C)

d = [1 2]

% esse comando resulta em um erro porque uma matriz tem menos colunas que a
% outra matriz:
% D = [A; B]
% Error using vertcat
% Dimensions of matrices being concatenated are not consistent. 

D = [0 0 0]
E = [A; D]

t1 = 64:80;
t2 = 81:100;
y1 = zeros(size(t1));
y2 = ones(size(t2));

figure,
plot(t1, y1, 'r', t2, y2, 'r', [80 81], [0 1], 'r')
ylim([-0.5 1.5])

t = [t1 t2];
y = [y1 y2];

figure,
plot(t, y, '-ko')
ylim([-0.5 1.5])

%%
x = 1

x = [x, x + 1]
x = [x, x + 1]
x = [x, x + 1]

x = [x; x + 1]
x = [x; x + 1]

%% repmat
A
repmat(A, 2, 2)
repmat(A, 2, 3)

repmat(0, 5, 6)
zeros(5, 6)

%% reshape
C
reshape(C, 5, 2)
reshape(C, 1, 10)

v = 1:20
reshape(v, 5, 4)'

F = reshape(v, 5, [])'

reshape(F', 4, [])'

F2 = reshape(F', 1, [])

F3 = F2(end:-1:1)

reshape(F3, 5, 4)'

%% fliplr
A
fliplr(A)
C

fliplr(C)
C(:,end:-1:1)

%% flipud
E
flipud(E)

%% Trabalhando com texto (string)
a = 'oi, boa noite!'
size(a)
a(1)
a(end)
a(1:5)
reshape(a, 2, [])
a(1:2:end)

b = 'socorram me subi no onibus em marrocos'
fliplr(b)

c = 'luza rocelina a namorada do manuel leu na moda da romana anil é cor azul'
fliplr(c)

d = 'roberto'
e = 'chega'
f = [e ' ' d ', ' e '. ']
disp(f)
repmat(f, 1, 10)

double(f) % retona o valor equivalente em decimal da tabela ascii
aux = f + 1 % decimal da tabela ascii
char(aux) % converte o valor decimal da tabela ascii em caracter

segredo = 42;
disp(segredo)
disp(['O segredo é ' segredo])
disp(['O segredo é ' num2str(segredo)])

g = '62'
g + 1
str2num(g) + 1

disp(['O resultado é ' num2str(segredo)])

%% receber dados do prompt
% recebe números ou string se estiver entre ''
valor1 = input('Digite o tempo que você está aqui na escola:\n--> ');

% recebe string
valor2 = input('Digite o tempo que você está aqui na escola:\n--> ', 's');

%%
inputdlg('roberto')

%% Conjuntos:
close all
clear all
clc

a = [5 4 7 3 9 4 1 1]

sort(a)

fliplr(sort(a))

sort(a, 'descend')

[a_ordenado, indices] = sort(a)

a(indices)

b = [10*a; 100*a; -20*a]
sort(b)

sort(b')'

sort(b, 2)

sort(sort(b), 2)

sort(a)
unique(a) % apresenta os números sem os repetidos

%% união de conjuntos
a
b = [2 3 4 10]
union(a, b)

%% intersecção de conjuntos
a
b
intersect(a, b)

%% diferença de conjuntos (tudo que tem no primeiro que não tem no segundo sem repetições)
a
b
setdiff(a, b)
% neste caso a ordem altera o resultado
setdiff(b, a)

%% diferença simétrica de conjuntos (todos os elementos menos a intersecção)
a
b
setxor(a, b)
sort([setdiff(a, b) setdiff(b, a)])

%% Polinômios:
p = [1 0 4 -5 1]

x = 1.25;
x^4 + 4*x^2 - 5*x + 1
% equivalente a calcular por extenso (exemplo linha acima):
polyval(p, 1.25)

polyval(p, [0 1 2 1.25])

x = 0:0.01:2;
y = polyval(p, x);
plot(x,y)

%% achar as raízes de um polinômio:
roots(p) 

q1 = [1 2 1]
roots(q1) 

q2 = [1 -5 6]
roots(q2)

%% achar um polinômio a partir das raízes:
poly([-1 -1])
poly([2 3])

%% multiplicação de polinômios:
conv([1 1], [2 3])

%% divisão de polinômios:
p = [1 -5 6]
q = [1 -3]
[a, b] = deconv(p, q)

[a, b] = deconv(p, [1 -4])

%% derivada
p = [7 0 -1 8]
polyder(p)

%% integral
format rat
polyint(p)

polyint(p, 1231)

format short

polyint(p, 1231)

%% Números aleatórios 
% seta semente para gerar os números aleatórios
seed = 5
rng(seed)

randi([3 10], 2, 9)
randi(10, 2, 9)
randi([0 1], 2, 9)
randi([0 1], 4)

rand(2, 7)
rand(3)

rand(1, 7) * 4 + 3

x = rand(1, 8) * 4 + 3

x = rand(1, 1000) * 4 + 3;
format long
min(x)
max(x)

format short
randn(1, 8)

