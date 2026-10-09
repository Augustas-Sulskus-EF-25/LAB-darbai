%{
 1 celiu masyvai
ca = {[1 2], 'text', true, "labas"};
disp(ca)

ilgiai = cellfun(@length, ca);
disp(ilgiai)
%}

%{ 
2 Srauto valdymo konstruktoriai

clear
while true
    a = input('Iveskite a: ');
    if isempty(a)
        break;
    end
    b = input('Iveskite b: ');
    if isempty(b)
        break;
    end
    c = input('Iveskite c: ');
    if isempty(c)
        break;
    end
    x = input('Iveskite x: ');
    if isempty(x)
        break;
    end

    f = a*x^2 + b*x + c;

    disp(f);
end

disp('ciklas baigtas')
%}


% 3 darbo uzduotis
%{
 3 darbo uzduotis

clear
x = input('Iveskite skaiciu x: ');
y = input('Iveskite skaiciu y: ');

for k = 1:20
    m = randi([2, x-1]);
    n = randi([2, y-1]);

    A = zeros(x, y);
    A(m, n) = NaN;

    disp(A);

    pause(0.5);
    clc;
end
%}
