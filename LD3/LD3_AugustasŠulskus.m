%{
1 Dvimatis grafikų vaizdavimas

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
}%

%{
 
2 Specializuotų grafikų kūrimas

A = [
    8  7  9  10;
    6  8  7   9;
    10 9  8   9;
    7  6  8   7;
    9  10 9   8;
    5  7  6   8
];

%Vertikalių stulpelių diagrama
figure;
subplot(2,1,1);
b = bar(A);

b(1).FaceColor = [0 0 0];       
b(2).FaceColor = [0.3 0.3 0.3]; 
b(3).FaceColor = [0.7 0.7 0.7]; 
b(4).FaceColor = [1 1 1];       

xlabel('Studentas');
ylabel('p');
title('a)')

xticks(1:6);
xticklabels({'1','2','3','4','5','6'});

legend('1 egz','2 egz','3 egz','4 egz','Location','northeast');

ylim([0 10]);
yticks([0 5 10]);
grid on;

% Diskretus duomenų vaizdavimas

subplot(2,1,2);
b = bar(A, 'stacked');

b(1).FaceColor = [0 0 0];
b(2).FaceColor = [0.3 0.3 0.3];
b(3).FaceColor = [0.7 0.7 0.7];
b(4).FaceColor = [1 1 1];

xlabel('Studentas');
ylabel('p');
title('b)')

xticks(1:6);
xticklabels({'1','2','3','4','5','6'});

yticks([0 10 20 30 40]);
ylim([0 40]);

legend('1 egz','2 egz','3 egz','4 egz','Location','northeast');

grid on;

%}
