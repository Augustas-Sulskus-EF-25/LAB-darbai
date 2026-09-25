%1 Dvimatis grafikų vaizdavimas

figure;

x = 0:0.1:2*pi;
y = x.^3 + tan(x);
plot(x, y, 'b-');

xlabel('x');
ylabel('y');
title('Funkcija y = x^3 + tan(x)');

axis([min(x) max(x) min(y) max(y)]);

legend('y = x^3 + tan(x)', 'Location', 'bestoutside');

grid on;


figure;

x = 0:0.1:2*pi;
y1 = exp(x);
y2 = exp(3*x);
y3 = exp(5*x);

plot(x, y1, 'b-o', ...
    x, y2, 'g-o', ...
    x, y3, 'r-o');

xlabel('x');
ylabel('y');
title('Eksponentinės funkcijos');

axis([min(x) max(x) min([y1 y2 y3]) max([y1 y2 y3])]);

legend('y = e^x', 'y = e^{3x}', 'y = e^{5x}', ...
    'Location', 'bestoutside');

grid on;

