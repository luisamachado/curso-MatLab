%% Estruturas de repetição:
close all
clear all
clc

format compact
format bank

%% Sentença for:
for x = 3:7
    disp(['O valor de x é ' num2str(x)]);
    s = x^2;
    disp(['O quadrado de x é ' num2str(s)]);
end

c = 1;
for x = 3:7
    disp(['Iteração ' num2str(c)]);
    disp(['O valor de x é ' num2str(x)]);
    s = x^2;
    disp(['O quadrado de x é ' num2str(s)]);
    c = c + 1;
end

%%
v = [0.5 10 -1 pi]
for x = v
    disp(['O valor de x é ' num2str(x)]);
    disp(['O quadrado de x é ' num2str(x^2)]);
end

M = [1 2 3; 4 5 6; 7 8 9]
for x = M
    x
    x.^2
end

%%
for x = 3:10
    disp(['O valor de x é ' num2str(x)]);
    disp(['O quadrado de x é ' num2str(x^2)]);
end


for x = rand(1, 4)
    disp(['O valor de x é ' num2str(x)]);
end

for x = randi([1 10], 1, 4)
    disp(['O valor de x é ' num2str(x)]);
end

%% break:
c = 1;
for x = 3:7
    disp(['Iteração ' num2str(c)]);
    disp(['O valor de x é ' num2str(x)]);
    s = x^2;
    disp(['O quadrado de x é ' num2str(s)]);
    if c == 5
        break;
    end
    c = c + 1;
end

disp('Boa noite!')

%%
for b = 1:10
    if b == 5
        break
    end
    b
end

disp('Boa noite!')

%% continue:
for b = 1:10
    if b == 5
        continue
    end
    b
end

disp('Boa noite!')

%% Sentença while:
c = 1;
while c <= 10
    disp(['c = ' num2str(c)]);
    c = c + 1;
end

c = 1;
while c <= 10
    disp(['c = ' num2str(c)]);
    c = randi([0 11]);
end

%%
while true
    idade = input('Digite sua idade: ');
    if idade >= 0
        break
    end
end
disp(['Sua idade é: ' num2str(idade)]);

%%
idade = -1;
while idade < 0
    idade = input('Digite sua idade: ');
end
disp(['Sua idade é: ' num2str(idade)]);

%% Soma de elementos de um vetor (1):
v = [1 10 3 10];

disp(['Soma usando sum: ' num2str(sum(v))])

soma = 0;
for ii = 1:length(v)
    soma = soma + v(ii);
end
disp(['Soma usando for: ' num2str(soma)])

%% Soma de elementos de um vetor (2):
soma = 0;
for a = v
    soma = soma + a;
end
disp(['Soma usando for: ' num2str(soma)])
