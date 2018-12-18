%% Exercícios: 
close all
clear all
clc

%% 1. Crie um programa que utiliza duas estruturas: ponto e reta.
% A estrutura ponto deve ter como campos as coordenadas do ponto.
% A estrutura reta tem como campos os coeficientes angular e linear da reta. 
% O seu programa deve requisitar do usuário as coordenadas do ponto e os 
% coeficientes da reta. Como saída, seu programa deve 
ponto = {'x', [], 'y', []};
reta = {'ang', [], 'linear', []};

ponto{2} = input('Coordenada x do ponto: ');
ponto{4} = input('Coordenada y do ponto: ')

reta{2} = input('Coeficiente angular x do ponto: ');
reta{4} = input('Coeficientes linear y do ponto: ')

x = -(2 + ponto{2}): 0.1: (2 + ponto{2});

r = reta{2}.*x + reta{4};

% a) Plotar na tela (plot) uma figura contendo o ponto e a reta. 
figure,
plot(ponto{2}, ponto{4}, '.m', 'MarkerSize', 25)
hold on
plot(x, r, 'b')
xlim([-(2 + ponto{2}) (2 + ponto{2})])
ylim([-(2 + ponto{2}) (2 + ponto{2})])
grid on

% b) Imprimir na tela (disp) distância do ponto até a origem. 
dist = sqrt(ponto{2}^2 + ponto{4}^2);
disp(['A distância do ponto até a origem é: ' num2str(dist)])

% c) Imprimir na tela (disp) se o ponto pertence à reta. 
if ponto{4} == reta{2}*ponto{2} + reta{4}
    disp('O ponto pertence a reta.')
else
    disp('O ponto não pertence a reta.')
end

%% Para testar seu programa:
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
dados = {'x_data', 'y_data', 'title', 'x_label',...
    'y_label', 'x_range', 'y_range'};

% Você pode adicionar outros campos que aumentem seu controle sobre o 
% diagrama final. 
% Depois de criar essa estrutura, escreva um programa no MATLAB que use a 
% estrutura para gerar um gráfico. O programa deve aplicar características 
% iniciais inteligentes se alguns campos de dados estiverem faltando. 
dados{2,1} = -5:0.1:5;
dados{2,2} = dados{2,1}.^2;
dados{2,3} = 'gráfico';
dados{2,4} = 'x';
dados{2,5} = 'y';
dados{2,6} = [-5 5];
dados{2,7} = [0 30];

plot(dados{2,1}, dados{2,2})
title(dados{2,3})
xlabel(dados{2,4})
ylabel(dados{2,5})
xlim(dados{2,6})
ylim(dados{2,7})

%% 3. Crie um arranjo de estruturas que contenha os os seguintes campos de 
% informação concernentes a pontes rodoviárias em uma cidade: 
% localização da ponte, carga máxima (toneladas), ano de construção, 
% ano agendado para a manutenção. 
pontes = {'localizacao', 'carga_max', 'ano_constr', 'ano_manut'};

% a) Insira os dados abaixo na estrutura: 
% Localização Carga máxima Ano de construção Agendamento para a manutenção
%   Smith St.           80              1928                          2011
%   Hope Ave.           90              1950                          2013
%   Clark St.           85              1933                          2012            
%   North Rd.          100           	1960                       	  2012    
pontes{2,1} = 'Smith St.';
pontes{2,2} = 80;
pontes{2,3} = 1928;
pontes{2,4} = 2011;

pontes{3,1} = 'Hope Ave.';
pontes{3,2} = 90;
pontes{3,3} = 1950;
pontes{3,4} = 2013;

pontes{4,1} = 'Clark St.';
pontes{4,2} = 85;
pontes{4,3} = 1933;
pontes{4,4} = 2012;

pontes{5,1} = 'North Rd.';
pontes{5,2} = 100;
pontes{5,3} = 1960;
pontes{5,4} = 2012;

pontes

% b) Edite o arranjo de estruturas para mudar de 2012 para 2018 o ano 
% agendado para a manutenção da ponte Clark St. 
pontes{4,4} = 2018;

% c) Adicione a seguinte ponte ao arranjo de estruturas: 
% Localização Carga máxima Ano de construção Agendamento para a manutenção
% Shore Rd. 	85 	1997 	2014 
pontes{6,1} = 'Shore Rd.';
pontes{6,2} = 85;
pontes{6,3} = 1997;
pontes{6,4} = 2014;

pontes