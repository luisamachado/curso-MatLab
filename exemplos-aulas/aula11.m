close all
clear all
clc

format compact

%% Cells

% não funciona pois as frases precisam ter os mesmo tamanho
%frases1 = ['MCC'; 'Só palestrão'; '2018']
% funciona, porém não é eficiente
frases1 = ['MCC         '; 'Só palestrão'; '2018        ']

% células:
frases2 = {'MCC'; 'Só palestrão'; '2018'}

frases3 = {'MCC', 'Só palestrão'; '2018', pi}
frases3 = {'MCC', 'Só palestrão'; '2018', [1 8]}
frases3 = {'MCC', [1 2; 3 4]; '2018', [1 8]}
frases3 = {'MCC', [1 2; 3 4]; struct('campo1', [], 'campo2', []), [1 8]}

size(frases3)

frases3(1,1)

% não funciona com células
%frases3(2,2).*[1 1]

frases3{2,2}.*[2 1]

frases3{1,1}
frases3{1,2}
frases3{2,1}
frases3{2,2}

% acessando a posição 2 do vetor que está na posição (2,2) da célula
frases3{2,2}(2)

frases3{1,1}(2:end)
frases3{2,1}.campo1

frases4 = {'MCC', [1 2; 3 4]; struct('campo1', [], 'campo2', []), [1 8]; pi, frases3(1,1)}

frases4(3,2)
frases4{3,2}
frases4{3,2}{1,1}
frases4{3,2}{1,1}(1:2)

frases4{3,2}{1,1}(1:2) = 'AB'
frases4{3,2}{1,1}

x.cammpo1 = frases4

frases2 = [frases2; 'Boa noite']
frases2 = {frases2; 'Boa noite'}

frases2{:}

frases2 = [frases2; 'Boa noite'; pi]
frases2{4} = 'Boa noite'

% precisa ser uma celula {}
% frases2(5) = 'Boa noite'

frases2{6} = 'Bom dia'
frases2{end+1} = 'Boa madrugada'
frases2{end+1} = randi([1 9], 1)

frases2'
frases2.'
frases2{end+1} = 1 + 2j
frases2'

celldisp(frases4)
cellplot(frases4)

frases4{3,1} = true
cellplot(frases4)

