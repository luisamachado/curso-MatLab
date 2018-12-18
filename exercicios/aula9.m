%% Exercícios: 
close all
clear all
clc

%% 1.
% Crie um programa que recebe do usuário um número X. Se este número for 
% maior que 10, então, o programa deve mostrar o quadrado do número X. Caso 
% contrário, o número X deve ser exibido junto com uma mensagem de boa noite. 
X = input('Digite o valor de X: ');

if X > 10
    q = X^2;
    disp(num2str(q))
else
    disp([num2str(X) ' Boa noite'])
end

%% 2.
% Escreva um programa no qual o usuário irá entrar com uma string, que irá 
% informar o assunto de uma discussão em um bate-papo da UOL. O programa 
% deverá mostrar uma mensagem de boas vindas relacionada ao tema nos casos em 
% que o tema seja cinema, moda ou gastronomia. Se o assunto for politica, 
% futebol ou religiao, o programa deverá informar que estes assuntos estão 
% proibidos. Qualquer outro assunto é inválido, e deverá receber uma mensagem 
% crítica. 
str = input('Digite uma string: ', 's');

if strcmp(str, 'cinema') || strcmp(str, 'moda') || strcmp(str, 'gastronomia')
    disp(['Bem vindo a sessão de ' str '.'])
elseif strcmp(str, 'política') || strcmp(str, 'futebol') || strcmp(str, 'religião')
    disp('Tema proibido.')
else
    disp('Mensagem crítica.')
end


%% 3.
% Escreva um programa no qual o usuário fornece três valores:
% o valor inicial
% o valor final 
% o passo de um intervalo
% Crie proteções para que o intervalo seja consistente. 
% Por exemplo, se o valor final for menor que o valor inicial, 
% então o passo deve ser negativo. Ao fim do programa, exiba x^2, 
% onde x é o intervalo. 
t0 = input('Digite o valor inicial de um intervalo: ');
tf = input('Digite o valor final de um intervalo: ');

if tf < t0
    disp('O valor do passo deve ser negativo');
    passo = input('Digite o passo do intervalo: ');
    if passo > 0
        disp('Erro, o passo deve ser negativo');
        passo = input('Digite o passo do intervalo: ');
    end
else
    disp('O valor do passo deve ser positivo');
    passo = input('Digite o passo do intervalo: ');
    if passo < 0
        disp('Erro, o passo deve ser positivo');
        passo = input('Digite o passo do intervalo: ');
    end
end

x = t0:passo:tf;

x.^2

%% 4.
% Crie um código que calcula o valor gasto total (em R$) e o peso total 
% (em kg) da compra de algumas unidades de arroz (5 kg), feijão (1 kg) e 
% café (500 g).
% O usuário deve fornecer quantas unidades quer comprar de cada produto 
% (comando input).
% Os dados devem ser validados: verificar se o usuário forneceu alguma 
% quantidade negativa.
% Condições de compra: 
% O preço unitário do arroz é R$15,00. Se comprar 3 ou mais, o preço cai 
% para R$14,00 cada.
% O preço unitário do feijão é R$12,00. Se comprar 4 ou mais, o preço cai 
% para R$11,50 cada.
% O preço unitário do café é R$10,00. Se comprar 3 ou mais, o preço cai 
% para R$9,25 cada. 

        % arroz feijao   café
tabela = [    5      1    0.5  % kg
          15.00  12.00  10.00] % valor unitário

disp('Lista de compras:')
arroz = input('Quantas unidades de arroz: ');
feijao = input('Quantas unidades de feijão: ');
cafe = input('Quantas unidades de café: ');

if arroz < 0
    disp('Quantidade inválida.')
    arroz = input('Digite novamente quantidade de arroz: ');
end

if feijao < 0
    disp('Quantidade inválida.')
    feijao = input('Digite novamente quantidade de feijão: ');
end

if cafe < 0
    disp('Quantidade inválida.')
    cafe = input('Digite novamente quantidade de café: ');
end

if arroz >= 3
    preco_arroz = 14.00;
else
    preco_arroz = tabela(2,1);
end

if feijao >= 4
    preco_feijao = 11.50;
else
    preco_feijao = tabela(2,2);
end

if cafe >= 3
    preco_cafe = 9.25;
else
    preco_cafe = tabela(2,3);
end

gasto_total = preco_arroz*arroz + preco_feijao*feijao + preco_cafe*cafe
peso_total = tabela(1,1)*arroz + tabela(1,2)*feijao + tabela(1,3)*cafe

%% 5.
% Implemente uma calculadora com as quatro operações básicas, recebendo a 
% escolha de operação e números com o comando input. Não se esqueça de 
% implementar proteções para as entradas de dados (divisão por zero, 
% vetores, etc).
disp('----------Calculadora----------')
disp('Opções:')
disp('  - ad: adição')
disp('  - sub: subtração')
disp('  - mult: multiplicação')
disp('  - div: divisão')
disp('-------------------------------')
disp(' ')

op = input('Escolha uma operação: ', 's');
a = input('Digite o primeiro número: ');
b = input('Digite o segundo número: ');
if strcmp(op, 'ad')
    result = a + b
elseif strcmp(op, 'sub')
    result = a - b
elseif strcmp(op, 'mult')
    result = a * b
elseif strcmp(op, 'div')
    result = a / b
end

%% 6. Modifique o programa do cálculo do IMC de modo a informar ao usuário o 
% grau de magreza/obesidade do indivíduo (veja aqui).