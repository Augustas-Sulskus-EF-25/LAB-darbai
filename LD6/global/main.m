clear;
global x y
x = 0:0.1:2*pi;
skaiciuoti
whos
plot(x, y, ':bs', 'MarkerSize', 5);
xlabel('x');
ylabel('sin(x) + cos(x)');
title('grafikas');
