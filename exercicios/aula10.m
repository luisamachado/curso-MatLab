%% Exercícios: 
close all
clear all
clc

%% 1. Crie um programa que utiliza duas estruturas: ponto e reta.
% A estrutura ponto deve ter como campos as coordenadas do ponto.
% A estrutura reta tem como campos os coeficientes angular e linear da reta. 
% O seu programa deve requisitar do usuário as coordenadas do ponto e os 
% coeficientes da reta. Como saída, seu programa deve 
ponto = struct('x', [], 'y', []);
reta = struct('ang', [], 'linear', []);

ponto.x = input('Coordenada x do ponto: ');
ponto.y = input('Coordenada y do ponto: ')

reta.ang = input('Coeficiente angular x do ponto: ');
reta.linear = input('Coeficientes linear y do ponto: ')

x = -(2 + ponto.x): 0.1: (2 + ponto.x);

r = reta.ang.*x + reta.linear;

% a) Plotar na tela (plot) uma figura contendo o ponto e a reta. 
figure,
plot(ponto.x, ponto.y, '.m', 'MarkerSize', 25)
hold on
plot(x, r, 'b')
xlim([-(2 + ponto.x) (2 + ponto.x)])
ylim([-(2 + ponto.x) (2 + ponto.x)])
grid on

% b) Imprimir na tela (disp) distância do ponto até a origem. 
dist = sqrt((ponto.x)^2 + (ponto.y)^2);
disp(['A distância do ponto até a origem é: ' num2str(dist)])

% c) Imprimir na tela (disp) se o ponto pertence à reta. 
if ponto.y == reta.ang*ponto.x + reta.linear
    disp('O ponto pertence a reta.')
else
    disp('O ponto não pertence a reta.')
end
% Para testar seu programa: 
% o ponto (3, 4) distância da origem de 5 unidades e pertence à reta y = 2x - 2. 

%% 2. Crie uma estrutura que contenha todas as informações necessárias para 
% construir um diagrama de um conjunto de dados. No mínimo, a estrutura 
% deve conter os seguintes campos: 

% x_data: dado referente ao eixo "x"
% y_data: dado referente ao eixo "y"
% title: título do diagrama
% x_label: rótulo do eixo "x"
% y_label: rótulo do eixo "y"
% x_range: faixa de valores exibidos no eixo "x"
% y_range: faixa de valores exibidos no eixo "y" 
dados = struct('x_data', [], 'y_data', [], 'title', [], ...
    'x_label', [], 'y_label', [], 'x_range', [], 'y_range', []);

% Você pode adicionar outros campos que aumentem seu controle sobre o 
% diagrama final. 
% Depois de criar essa estrutura, escreva um programa no MATLAB que use a 
% estrutura para gerar um gráfico. O programa deve aplicar características 
% iniciais inteligentes se alguns campos de dados estiverem faltando. 
dados.x_data = -5:0.1:5;
dados.y_data = dados.x_data.^2;
dados.title = 'gráfico';
dados.x_label = 'x';
dados.y_label = 'y';
dados.x_range = [-5 5];
dados.y_range = [0 30];

plot(dados.x_data, dados.y_data)
title(dados.title)
xlabel(dados.x_label)
ylabel(dados.y_label)
xlim(dados.x_range)
ylim(dados.y_range)

%% 3. Crie um arranjo de estruturas que contenha os os seguintes campos de 
% informação concernentes a pontes rodoviárias em uma cidade: 
% localização da ponte, carga máxima (toneladas), ano de construção, 
% ano agendado para a manutenção. 
pontes = struct('localizacao', [], 'carga_max', [], 'ano_constr', [], 'ano_manut', [])

% a) Insira os dados abaixo na estrutura: 
% Localização Carga máxima Ano de construção Agendamento para a manutenção
%   Smith St.           80              1928                          2011
%   Hope Ave.           90              1950                          2013
%   Clark St.           85              1933                          2012            
%   North Rd.          100           	1960                       	  2012    
pontes(1).localizacao = 'Smith St.';
pontes(1).carga_max = 80;
pontes(1).ano_constr = 1928;
pontes(1).ano_manut = 2011;

pontes(2).localizacao = 'Hope Ave.';
pontes(2).carga_max = 90;
pontes(2).ano_constr = 1950;
pontes(2).ano_manut = 2013;

pontes(3).localizacao = 'Clark St.';
pontes(3).carga_max = 85;
pontes(3).ano_constr = 1933;
pontes(3).ano_manut = 2012;

pontes(4).localizacao = 'North Rd.';
pontes(4).carga_max = 100;
pontes(4).ano_constr = 1960;
pontes(4).ano_manut = 2012;

% b) Edite o arranjo de estruturas para mudar de 2012 para 2018 o ano 
% agendado para a manutenção da ponte Clark St. 
pontes(3).ano_manut = 2018;

% c) Adicione a seguinte ponte ao arranjo de estruturas: 
% Localização Carga máxima Ano de construção Agendamento para a manutenção
% Shore Rd. 	85 	1997 	2014 
pontes(5).localizacao = 'Shore Rd.';
pontes(5).carga_max = 85;
pontes(5).ano_constr = 1997;
pontes(5).ano_manut = 2014;

pontes(1)
pontes(2)
pontes(3)
pontes(4)
pontes(5)