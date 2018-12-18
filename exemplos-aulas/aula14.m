%% Processamento de imagens
clc
close all
clear all

%% Para ler uma imagem do computador, é utilizada a função imread: 
x = imread('imagem1.jpeg');

whos x

max(max(x))

min(min(x))

%% Para visualizar a imagem, é utilizada a função imshow. Uma figura pode 
% antes ser aberta, para evitar que a imagem seja exibida em cima de uma 
% outra figura: 
figure
imshow(x)

%%
x_old = x;

x = im2double(x_old);

figure(2)
subplot(121)
imshow(x)
title('Imagem original')

%% Negativo da imagem
x_negativo = 1 - x;
figure
imshow(x_negativo)

%% Aumentar o contraste
%% tentativa 1
z = 2*x; 
figure
imshow(z)
% pela figura vemos que aumentou o brilho, saturou o branco

%% tentativa 2
y = ((x/0.6).^2) * 0.6; 
figure(2)
subplot(122)
imshow(y)
title('Imagem com contraste')
% pela figura vemos que ocorreu o contraste das cores

%% Exemplo 
d = linspace(0, 1, 800);
D = repmat(d, 500, 1);
D2 = ((D/0.6).^2) * 0.6; 

figure
subplot(211)
imshow(D)
title('Degradê')
subplot(212)
imshow(D2)
title('Degradê com contraste')

%% plot da matriz identidade 
figure
imshow(eye(500))

%% Binarização
bin1 = x > 0.6;
figure
imshow(bin1)

%% Subamostragem
subs = x(1:4:end, 1:4:end);
figure
imshow(subs)

%% extra
test = reshape(x,[],169);
figure
imshow(test)

%% Adicionando marca d'água
figure
imshow(x)

marca = imread('logo.gif');
figure
imshow(marca)

marca_old = marca;

marca = im2double(marca);
max(max(marca))
min(min(marca))

size(marca)
size(x)

camada = ones(size(x));

% esse tamanho deve ser igual ao size da marca
size(camada(461:end, 406:end))

camada(461:end, 406:end) = marca;
figure
imshow(camada)

im_logo = x .* camada;
figure
imshow(im_logo)

%% extra
d = linspace(1, 0, size(x, 1));
D = repmat(d', 1, size(x, 2));

imshow(D)

E = x .* D;
figure
imshow(E)
% imagem com filtro degradê preto e branco

%% Suavização
mask1 = (1/9)*ones(3);

sum(sum(mask1));

suav1 = conv2(x, mask1);

whos x suav1

figure
imshow(suav1)

%%
mask3 = (1/25)*ones(5);

sum(sum(mask3));

suav3 = conv2(x, mask3);

whos x suav2

figure
imshow(suav3)

%%
mask3 = (1/(51^2))*ones(51);

sum(sum(mask3));

suav3 = conv2(x, mask3);

whos x suav3

figure
imshow(suav3)

%% 
F = round(x, 1);
figure
imshow(F)

%%
sobel_v = [-1 -2 -1; 0 0 0; 1 2 1]

sobel_h = [-1 0 1; -2 0 2; -1 0 1]

bv = conv2(x, sobel_v);
bh = conv2(x, sobel_h);

figure
subplot(121)
imshow(bv)
subplot(122)
imshow(bh)

b = (bv + bh)/2;
figure
imshow(b)

%% Imagem colorida:
a = imread('imagem2.jpeg');
a1 = im2double(a);
size(a1)
figure
subplot(221)
imshow(a1)

a_R = a1(:, :, 1);
subplot(222)
imshow(a_R)
title('intensidade de vermelho')

a_G = a1(:, :, 2);
subplot(223)
imshow(a_G)
title('intensidade de verde')

a_B = a1(:, :, 3);
subplot(224)
imshow(a_B)
title('intensidade de azul')

%%
a_R = zeros(size(a1));
a_R(:, :, 1) = a1(:, :, 1);

a_G = zeros(size(a1));
a_G(:, :, 2) = a1(:, :, 2);

a_B = zeros(size(a1));
a_B(:, :, 3) = a1(:, :, 3);

figure
subplot(221)
imshow(a1)
title('original')

subplot(222)
imshow(a_R)
title('vermelho')

subplot(223)
imshow(a_G)
title('verde')

subplot(224)
imshow(a_B)
title('azul')

%% extra
b = a1;
b(:, :, 1:3) = a1(:, :, 3:-1:1);

figure
subplot(121)
imshow(b)
title('camadas invertidas')

subplot(122)
imshow(1 - b)
title('negativo de b')


b2 = a1;
b2(:, :, 1:3) = a1(:, :, [2 3 1]);

b3(:, :, [1 2]) = a1(:, :, [2 3]);
b3(:, :, 3) = 1 - a1(:, :, 1);

figure
imshow(b3)

%%
figure
subplot(121)
imshow(b2)
title('camadas misturadas')

subplot(122)
imshow(1 - b2)
title('negativo de b2')

figure
subplot(121)
imshow(a1)
title('original')

subplot(122)
imshow(1 - a1)
title('negativo da original')