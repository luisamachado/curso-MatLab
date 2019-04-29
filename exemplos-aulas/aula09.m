close all
clear all
clc

format compact

%% Exemplos:
x = randi(10);
y = 3;
w = x + 2*y

%% Cálculos:
% $\sin(\pi \Omega \omega^2)$
x = -30;
y = 3;
t = 0:0.1:10;
s = sin(t);
figure,
plot(t,s)
title('Seno(t)')

%% Controle de fluxo de dados: 
x = 0:8

mod(x,3)
mod(x,2)

%% if
x = randi([1 10]);
y = 3;
w = x + y;

if mod(w,2) == 0
    disp('É par')
end
if mod(w,2) ~= 0
    disp('É ímpar')
end

disp(['O valor de w é ' num2str(w)])

%% else
x = randi([1 10]);
y = 3;
w = x + y;

if mod(w,2) == 0
    disp('É par')
else
    disp('É ímpar')
end

disp(['O valor de w é ' num2str(w)])

%% elseif
x = randi([1 4]);

if x == 1
    disp('É um')
elseif x == 2
    disp('É dois')
elseif x == 3
    disp('É três')
else
    disp('É quatro')
end
disp(['O valor de x é ' num2str(x)])

x = 'a'
if x == 1
    disp('É um')
elseif x == 2
    disp('É dois')
elseif x == 3
    disp('É três')
else
    disp('É quatro')
end
disp(['O valor de x é ' num2str(x)])

x = 'a'
if x == 1
    disp('É um')
elseif x == 2
    disp('É dois')
elseif x == 'a'
    disp('É três')
else
    disp('É quatro')
end
disp(['O valor de x é ' num2str(x)])

x = 'a'
if x == 1
    disp('É um')
elseif x == 2
    disp('É dois')
elseif x == 97
    disp('É três')
else
    disp('É quatro')
end
disp(['O valor de x é ' num2str(x)])

x = 'Betão'
if x == 'Ramon'
    disp('É um')
elseif x == 2
    disp('É dois')
elseif x == 'Betão'
    disp('É três')
else
    disp('É quatro')
end
disp(['O valor de x é ' num2str(x)])

x = 'Betão'
if strcmp(x, 'Ramon')
    disp('É um')
elseif x == 2
    disp('É dois')
elseif strcmp(x, 'Betão')
    disp('É três')
else
    disp('É quatro')
end
disp(['O valor de x é ' num2str(x)])

%% A sentença switch
n = input('Entre com um número: ');
switch n
    case -1
        disp('um negativo')
    case 0
        disp('zero')
    case 1
        disp('um positivo')
    otherwise
        disp('outro valor')
end

%%
x = [12 64 24];
plottype = input('Entre com o tipo de gráfico: ', 's');

switch plottype
    case 'bar' 
        bar(x)
        title('Bar Graph')
    case {'pie','pie3'}
        pie3(x)
        title('Pie Chart')
    otherwise
        warning('Unexpected plot type. No plot created.')
end
