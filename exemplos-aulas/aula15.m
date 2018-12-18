clc
close all
clear all

%% Importação de dados
uiimport

%% Gráficos 2D
x = 0:0.1:2*pi;

figure
subplot(221)
plot(x, sin(x));
xlim([0 7])

subplot(222)
stem(x, sin(x));
xlim([0 7])

subplot(223)
bar(x, sin(x));
xlim([0 7])

subplot(224)
stairs(x, sin(x));
xlim([0 7])

figure
comet(x, sin(x));

%% semilogx
figure
semilogx(x, sin(x))
grid on

figure
plot(x, abs(sin(x)));
grid on

figure
semilogx(x, abs(sin(x)))
grid on

%% semilogy
figure
semilogy(x, sin(x))
grid on

figure
semilogy(x, abs(sin(x)))
grid on

%% loglog
figure
loglog(x, sin(x))
grid on

figure
loglog(x, abs(sin(x)))
grid on

%% Exemplo: Resposta em frequência de um filtro passa-baixa de segunda ordem:
w = 0.001:0.001:1000;

H = 1 ./ sqrt(1 + w.^2);

figure

subplot(221)
plot(w, H)
title('Linear')
grid on

subplot(222)
semilogx(w, H)
title('Semilog X')
grid on

subplot(223)
semilogy(w, H)
title('Semilog Y')
grid on

subplot(224)
loglog(w, H)
title('Log Log')
grid on

%% Diminuindo passos
w = 0.001:1000;

H = 1 ./ sqrt(1 + w.^2);

figure
loglog(w, H)
title('Log Log')
grid on

%% usando logspace
w = logspace(-3, 3, 1000)
H = 1 ./ sqrt(1 + w.^2);

figure
loglog(w, H)
title('Log Log')
grid on

%% Gráfico polar
t = 0:0.01:4*pi; % teta
r = 2*ones(size(t)); % r(teta)

figure
plot(t, r)

figure
polar(t, r)

r = t;
figure
polar(t, r)

t = 0:0.01:40*pi; % teta
r = t;
figure
polar(t, r)

%% Rosa polar
t = 0:0.01:40*pi; % teta
k = 7/5;
r = cos(k*t);

figure
plot(t, r)

figure
polar(t, r)

t = 0:0.01:40*pi; % teta
k = 5/3;
r = cos(k*t);

figure
plot(t, r)

figure
polar(t, r)

%%
figure
polar(t, r + randn(size(r))*0.01)

%%
z = 1 + 2j;
polar(angle(z), abs(z), 'o')

%%
x = linspace(0, 4, 1000);
y1 = sin(x);
y2 = 0.001 * cos(x / 2);
plot(x, y1)
hold on
plot(x, y2)

%%
clf % limpa conteúdo do figure

plotyy(x, y1, x, y2)
title('\Omega \omega \int_0^1 \sigma \Sigma')

%% Gráficos em 3D
% Exemplo: Equações paramétricas para uma hélice circular: 
a = -1;
b = 3;
t = 0:0.01:20;
x = a*cos(t);
y = a*sin(t);
z = b*t;
plot3(x, y, z)
grid on
xlabel('X')
ylabel('Y')
zlabel('Z')
view(30,44)

comet3(x, y, z)

%% Gráficos de superfície
[X, Y] = meshgrid(0:3) % matriz quadrada

[X, Y] = meshgrid(0:3, -2:0.5:0)

Z = ones(size(X))

figure
surf(X, Y, Z)

Z(2, 3) = 3

figure
surf(X, Y, Z)

Z(5, 1) = -2

figure
surf(X, Y, Z)

Z = 2*X + 3*Y

figure
surf(X, Y, Z)

shading flat % tira a linha do gráfico

shading faceted % volta para o padrão

shading interp % gráfico fica degradê

colormap gray % gráfico fica preto e branco

colormap winter

colormap parula

colormap default

%%
mesh(X, Y, Z)

colormap gray

colormap default

%%
[X, Y] = meshgrid(0:0.1:3, -2:0.05:0);
Z = 2*X + 3*Y;

mesh(X, Y, Z)

colormap gray

%% Exemplo bonitinho
[X, Y] = meshgrid(-20:0.5:20);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
surf(X, Y, Z)
shading interp

%%
colormap autumn
%%
colormap summer
%%
colormap flag
%%
colormap lines
%%
colormap spring

%%
contour(X, Y, Z)

%% 
surfc(X, Y, Z)

%%
meshc(X, Y, Z)