clear all
close all
clc

%% 1) Plote, em um mesmo gráfico, as funções:
%f(x) = sqrt(1 - (|x|-1)^2) e g(x) = arccos(1 - |x|) - \pi
% para -2 <= x <= 2. 


x = [-2: 0.01: 2];
f = sqrt(1 - (abs(x) - 1).^2);
g = acos(1 - abs(x)) - pi;

figure,
plot(x, f)
hold on
plot(x, g)
hold off
title('Coração')
legend('f(x)', 'g(x)', 'Location', 'southeast')

%% 2) Plote a função f(x) = x^2 + x - 2 de -4 até 4 e encontrar as raízes por Bhaskara. 

y = [-4: 0.01: 4];

g = zeros(1, length(y));
f = y.^2 + y - 2;

delta = 1 - 4 * 1 * (-2);
x1 = (-1 + sqrt(delta))/(2 * 1);
x2 = (-1 - sqrt(delta))/(2 * 1);

figure,
plot(y, f)
hold on
plot(y, g)
legend('f(x)','constante = 0', 'Location', 'northwest')

%% 3) Utilize o MATLAB para plotar a função T = 3 ln (2t) - 5 e^(0,5 t) ao longo do intervalo 1 <= t <= 3.
% Insira um título na plotagem e rotule adequadamente os eixos. 
% A variável T representa a temperatura em graus Celsius;
% a variável t representa o tempo em minutos. 

t = [1: 0.01: 3];
T = (3 * log(2 .* t)) - (5 * exp(0.5 * t));

figure,
plot(t, T)
title('Função T(t)')
xlabel('Tempo [min]')
ylabel('Temperatura [°C]')

%% 4) Plote as funções u = 100 log10(60x + 1) e v = 50 cos(6x) sen(2x) + 150x
% ao longo do intervalo 0 <= x <= 2. 
% Rotule adequadamente a plotagem e cada uma das curvas, utilizando legend.
% A variável u representa a velocidade de uma Ferrari em km/h.
% A variável v representa a velocidade de um Fusca. 

x = [0: 0.01: 2];

u = 100 .* log10((60 .* x) + 1); 
v = 50 .* cos(6 .* x) .* sin(2 .* x) + (150 .* x);

figure,
plot(x, u)
hold on
plot(x, v)
hold off
title('Comparação')
xlabel('Tempo')
ylabel('Velocidade [km/h]')
legend('Ferrari', 'Fusca', 'Location', 'northwest')

%% 5) Use a função stem para plotar os sinais abaixo na mesma figura:
% cos(x), para 0 <= x <= 2pi
% 0.5 sin(x), para pi <= x <= 3pi

x = [0: 0.1: (2 * pi)];
cosseno = cos(x);
figure,
stem(x, cosseno)
hold on

x = [pi: 0.1: (3 * pi)];
seno = 0.5 .* sin(x);
stem(x, seno)
hold off

%% 6) A série de Fourier é uma representação em série de funções periódicas em termos de senos e cossenos.
% A representação em série de Fourier da função 
% Plote, em um mesmo gráfico, a função f(x) e sua representação em série g(x), 
% utilizando os quatro termos explicitados. Considere x na faixa de −pi até pi. 

x1 = [-pi: 0.01: 0];
x2 = [0: 0.01: pi];

f1 = -ones(1, length(x1));
f2 = ones(1, length(x2));
f = [f1 f2];

x = [x1 x2];

senos = sin(x) + (sin(3 .* x) ./ 3) + (sin(5 .* x) ./ 5) + (sin(7 .* x) ./ 7);
g = (4 / pi) .* senos;

figure,
plot(x, f)
hold on
plot(x, g)

% 8)
ii = [1:2:7];

seno = sin(ii .* x) ./ ii;

legend('f(x)', 'g(x)', 'Location', 'northwest')

%% 7) Fazer o plot de um sinal de tensão versus tempo, como da figura:
% f(t) = 
% sin(2pit/63) de t = 1s ate t = 63s
% 0 de t = 64s ate t = 80s 
% 1 de t = 81s ate t = 100s 
% -1 de t = 101s ate t = 120s
% Não esquecer de nomear os eixos. 

t1 = [1: 0.1: 63];
f1 = sin((2 * pi .* t1) ./ 63);

t2 = [64: 0.1: 80];
f2 = zeros(1, length(t2));

t3 = [81: 0.1: 100];
f3 = ones(1, length(t3));

t4 = [101: 0.1: 120];
f4 = -ones(1, length(t4));

t = [t1 t2 t3 t4];

f = [f1 f2 f3 f4];

figure,
plot(t, f)
title('Tensão versus tempo')
xlabel('Tempo [t]')
ylabel('Tensão [V]')
ylim([-1.1 1.1])
grid on
