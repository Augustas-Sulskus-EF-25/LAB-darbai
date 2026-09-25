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

P:Signalų grafinis atvaizdavimas 

t = 0:0.005:1.5;
A = 8;
f = 5;
p = 1.8;
U1 = 5;
U2 = 3;

s = A*cos(2*pi*f*t);
n = p*randn(size(t));
x = s + n;

atrinktos_reiksmes = x(x > U1);

x_filtruotas = x;
x_filtruotas(abs(x_filtruotas) < U2) = 0;

cdydis = length(x);
ddydis = length(atrinktos_reiksmes);

max_reiksme = max(x_filtruotas);
min_reiksme = min(x_filtruotas);

figure;

%1 grafikas 
subplot(1,2,1);

plot(t, x, 'b-', 'LineWidth', 1);
hold on;

plot(t, x_filtruotas, 'g:', 'LineWidth', 1.5);

yline(U1, 'r-.', 'U1 = 5 V', 'LineWidth', 1.2);
yline(U2, 'r-.', 'U2 = 3 V', 'LineWidth', 1.2);
yline(-U2, 'r-.', '-U2 = -3 V', 'LineWidth', 1.2);

title('Pradinis ir filtruotas signalai');
xlabel('Laikas, t (s)', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Įtampa, U (V)', 'FontSize', 13, 'FontWeight', 'bold');

legend('Pradinis signalas', 'Filtruotas signalas', ...
       'U_1 riba', 'U_2 riba', '-U_2 riba', ...
       'Location', 'northeast');

grid on;
xlim([0 1.5]);
ylim([-12 12]);

%2 grafikas
subplot(1,2,2);

indeksai = find(x > U1);
stem(t(indeksai), x(indeksai), 'filled', 'MarkerFaceColor','b', 'MarkerSize',9)
hold on;

min_indeksai = find(islocalmin(x_filtruotas));

plot(t(min_indeksai), x_filtruotas(min_indeksai), ...
     'ro', 'MarkerSize', 9, 'LineWidth', 1.5);


title('Signalo reikšmės, viršijančios U_1');
xlabel('Laikas, t (s)', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Įtampa, U (V)', 'FontSize', 13, 'FontWeight', 'bold');

legend('x > U_1', 'Minimali reikšmė', ...
       'Location', 'northeast');

grid on;
xlim([0 1.5]);
ylim([-12 12]);

sgtitle('Signalo analizė ir filtravimas');
