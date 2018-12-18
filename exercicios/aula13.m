%% Exercícios:
close all
clear all
clc

%% 1. Escreva as seguintes funções:

%% a) Uma função que retorna a média aritmética e a média geométrica de dois 
% dados números.

disp('Função que calcula média aritmética e geométrica:');

x = input('Digite o primeiro número: ');
y = input('Digite o segundo número: ');

[aritm, geom] = medias(x, y);

disp(['Média aritmética: ' num2str(aritm)]);
disp(['Média geométrica: ' num2str(geom)]);

%% b) Modifique o programa do IMC (Aula 9) para que ele seja calculado a 
% partir da chamada de uma função.
disp('Função que calcula o IMC:');

x = input('Digite seu peso: ');
y = input('Digite sua altura: ');

res = IMC(x, y)

if res < 17	
    disp('Muito abaixo do peso')
elseif 17 < res & res < 18.49
    disp('Abaixo do peso')
elseif 18.5 < res & res < 24.99
    disp('Peso normal')
elseif 25 < res & res < 29.99	
    disp('Acima do peso')
elseif 30 < res & res < 34.99
    disp('Obesidade I')
elseif 35 < res & res < 39.99
    disp('Obesidade II (severa)')
else
    disp('Obesidade III (mórbida)')
end

%% c) Uma função que retira um caracter (passado no primeiro argumento da 
% função) de uma string (passada no segundo argumento da função)
str = retira('a', 'Ola, como vai você? Ola')

%% 2. Escreva uma função que determina o tempo (em anos) necessário para 
% que você acumule pelo menos VF (em dólares) em uma conta bancária se você 
% depositar inicialmente Vo (em dólares) e mais P (em dólares) ao final de 
% cada ano, com um rendimento anual de R%.
anos = acumulo(5000, 100, 200, 20)

%% 3. Escreva as seguintes funções:
% a) Uma função que calcule o fatorial de um número;
% b) Uma função que calcule os n primeiros termos da sequência de 
% Fibonacci, dispondo-os num vetor;
% c) Inclua proteções para usuário (para o caso em que o usuário tenha 
% passado algo diferente do esperado como argumento) nas duas funções 
% anteriores.

%% 4. Escreva uma função que implementa a Cifra de César. A entrada da função 
% deve ser:
% O string a ser codificado/decodificado;
% O deslocamento a ser aplicado em cada letra do string, podendo ser um 
% inteiro positivo (deslocamento para a direita) ou negativo (deslocamento 
% para a esquerda).

%% 5. Escreva uma função que retorna todos os números primos menores ou iguais 
% a um dado inteiro n. Utilize o algoritmo do Crivo de Eratóstenes.