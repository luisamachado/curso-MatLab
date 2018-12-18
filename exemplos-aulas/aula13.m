%% Funções
clc
close all
clear all

%%
[x, flag] = opera(10, '/', 0)

%%
[x, flag] = opera(10, '/', 10)

%% pega só o primeiro retorno:
x = opera(20, '/', 5)

%% pega só o segundo retorno: (o til ignora o retorno daquela posição, 
% ex: [x, ~, y] pega o primeiro e o último retorno e ignora o segundo)
[~, flag] = opera(10, '/', 10)

%% usando return
[~, flag] = opera_v2(10, ';', 'w')
