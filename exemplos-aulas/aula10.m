close all
clear all
clc

format compact

%% Estruturas
diego = struct('nome_completo', 'Diego da Silva de Medeiros', 'idade', 31, 'carro', 'Fusca 74 (bege alabastro)', 'altura', 181)
diego.idade > 20
diego.idade = 35
diego.idade = diego.idade - 4
%%
ramon.nome_completo = 'Ramon Mayor Martins'
ramon.idade = 35
ramon.carro = 'Mercedes-Benz Classe A'
ramon.altura = 177

isequal(ramon, diego)

guilherme = struct('nome_completo', 'Diego da Silva de Medeiros', 'idade', 31, 'carro', 'Fusca 74 (bege alabastro)', 'altura', 181)

isequal(guilherme, diego)

diego.apelido = ''

ramon.idade > diego.idade

%% remove o campo apelido da struct diego
rmfield(diego, 'apelido')

diego

diego = rmfield(diego, 'apelido')

diego

%% verifica se existe um campo na struct diego
isfield(diego, 'carro') 
isfield(diego, 'Carro') 
isfield(diego, 'queijo') 

%% verifica se o campo está vazio na struct diego
diego.campox = []
isempty(diego.carro)
isempty(diego.campox)

%% adicionando um campo com matriz
diego.campox = [12 7 -5]
ramon.campox = abs(diego.campox) * 1e6

diego.eh_rico = false
ramon.eh_rico = 'muito'

diego.eh_rico = mean(diego.campox) > 1e3
ramon.eh_rico = mean(ramon.campox) > 1e3
%% Exemplos:
% nao_funciona = struct('nome completo', 'x')
% nao_funciona = struct('121345', 'x')
funciona = struct('a121345', 'x')
minha_struct = struct('campo1', [])

%% 
professores = diego
professores(2) = ramon
% professores(3) = struct('nome_completo', 'Odilson', 'idade', 55, 'carro', 'Jeep Compass (branco)', 'altura', 175, 'campoy', Inf)
% precisa ter os mesmos campos
professores(3) = struct('nome_completo', 'Odilson', 'idade', 55, 'carro', 'Jeep Compass (branco)', 'altura', 175, 'campox', randi([1e9 2e9], 1, 3), 'eh_rico', true)

professores.altura
x = professores.altura
[x y z] = professores.altura

professores(2).eh_rico
professores(3).campox


professores(3).vista_pro_mar = true

professores(1)
professores(2)

%%
x = struct('c1', 1, 'c2', 2)
y = struct('c2', 2, 'c1', 1)

isequal(x,y)

% z = x
% z(1) = y
% não funciona pois a ordem está trocada
