%% Exercícios:
close all
clear all
clc

%% 1. Acrescente à calculadora a possibilidade de continuar realizando 
% cálculos até que o usuário solicite a saída digitando 's'. 
disp('----------Calculadora----------')
disp('Opções:')
disp('  - ad: adição')
disp('  - sub: subtração')
disp('  - mult: multiplicação')
disp('  - div: divisão')
disp('  - s: sair')
disp('-------------------------------')
disp(' ')

while true
    op = input('Escolha uma operação: ', 's');
    if strcmp(op, 's')
        break
    end
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
end

%% 2. Escreva um programa que calcule o fatorial de um número, 
% utilizando for e while. 

%% for
disp('Calculador o fatorial de um número')
x = input('Digite o número: ');

result = 1;
for ii = 1:x
    result = result * ii;
end

disp(['Fatorial de ' num2str(x) ' é: ' num2str(result)])

%% while
disp('Calculador o fatorial de um número')
x = input('Digite o número: ');

result = 1;
ii = 1;
while ii <= x 
    result = result * ii;
    ii = ii + 1;
end

disp(['Fatorial de ' num2str(x) ' é: ' num2str(result)])

%% 3. Escreva um programa que calcule os n primeiros termos da sequência de 
% Fibonacci, dispondo-os num vetor. 


%% 4. Considere os códigos abaixo: 
% 
% Símbolo 	A 	B 	C 	D 	E 	F
% Código 1 	000 	001 	010 	011 	100 	101
% Código 2 	00 	10 	11 	010 	0110 	0111 
% 
% a) Escreva um programa que codifique uma sequência de símbolos, gerando a 
% sequência de bits correspondente. Seu programa deverá funcionar tanto para 
% o código 1 quanto para o código 2. Teste seu programa com a seguinte 
% string: F A D A B A B A C A. 
% b) Escreva um programa que decodifique uma string recuperando a sequência 
% de símbolos original. Teste seu programa com a seguinte sequência de bits: 
% 
% Código 1: 001000001000101100011100 
% Código 2: 10001000011101100100110 
% 
% c) Junte os dois códigos anteriores num único programa, onde o usuário 
% seleciona a operação (codificação ou decodificação), o código (1 ou 2), e 
% entra com o dado a ser operado. 
 
%% 5. Escreva um programa que implementa o jogo Genius®. O programa deverá 
% gerar uma sequência aleatória de letras e/ou números e exibir um por um na 
% tela, limpando-a em seguida. Após isso, aguardará o usuário entrar com a 
% sequência. 

%% 6. A série de Fourier é uma representação em série de funções periódicas em
% termos de senos e cossenos. A representação em série de Fourier da função
% 
% x1 = -pi:0
% f(x1) = -1
% x2 = 0:pi
% f(x2) = 1
% 
% g(x) = (4/pi) .* sin(x) + sin(3x)/3 + sin(5x)/5 + sin(7x)/7 ... 
% 
% Plote em um mesmo gráfico a função f(x) e sua representação em série g(x), 
% utilizando um número de termos definido pelo usuário. 
% 
