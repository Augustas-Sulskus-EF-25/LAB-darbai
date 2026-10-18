function varargout = grafsincos(x, varargin)
% GRAFSINCOS Apskaičiuoja sinusa ir kosinusa arba braižo grafikus.
% x - vektorius-eilutė

s = sin(x);
c = cos(x);

if nargout > 0
    varargout{1} = s;

    if nargout > 1
        varargout{2} = c;
    end
else
    plot(x, s, 'r-o', x, c, 'b-*');
    grid on;
    xlabel('x');
    ylabel('Reikšme');
    title('Sinuso ir kosinuso grafikai');
    legend('sin(x)', 'cos(x)');
end
end
