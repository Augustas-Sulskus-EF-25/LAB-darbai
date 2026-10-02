%Trimatis grafikų vaizdavimas

 % --------------------
 figure;

 [X, Y] = meshgrid(-1:.1:1);
 r = sqrt(X.^2 + Y.^2);
 Z = exp(r.^2);

 surf(X, Y, Z);

 shading interp;
 colormap hsv;
 lightangle(-45,30);

 view(10,10);
 title('Trimačio paviršiaus grafikas a)');
 xlabel('X ašis');
 ylabel('Y ašis');
 zlabel('Z ašis');
 grid on;

 % ---------------------
 figure;

 x = linspace(-2,2,20);
 y = linspace(-2,2,20);
 [X,Y] = meshgrid(x,y);

 F = sin((X.^2 + Y.^2)/20) .* ...
     exp(-(X.^2 + Y.^2));

 surf(X,Y,F);

 shading interp;
 colormap hsv;
 lightangle(-45,30);

 xlabel('X ašis');
 ylabel('Y ašis');
 zlabel('Z ašis');
 title('Trimatės funkcijos paviršius b)');
 grid on;
 axis tight;
 view(10,10);


 % ----------------------
 figure;

 [x,y] = meshgrid(-5:0.1:5);
 z = 1 - (x.^2 + y.^2);

 surf(x,y,z, ...
     'FaceColor', 'red', ...
     'EdgeColor', 'none');

 xlabel('x');
 ylabel('y');
 zlabel('z');
 title('Trimatės funkcijos paviršius c)');
 grid on;

 camlight('left');
