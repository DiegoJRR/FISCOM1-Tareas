% Actividad 1
% Equipo "Los Chinojos"

% 1)

sinusoidales(1, 1, 2, 3, 40, 40)

%% 2)



function plotVortex(A, B)
    % F(x, y) = Aexp(-r^2/B^2)exp(i theta)r
   
    x = linspace(0, 30, 2^8);
    y = x;
   
    [X, Y] = meshgrid(x, y);
   
    r = sqrt(X.^2 + Y.^2);
    theta = atan(Y./X);
   
end

function sinusoidales(A1, A2, w1, w2, phi1, phi2)
    x = linspace(0, 2*pi, 1000);
   
    f1 = A1*sin(w1*x + phi1);
    f2 = A2*sin(w2*x + phi2);
   
    figure(1);
    plot(x, f1, 'k');
    hold on;
    plot(x, f2, 'r');
    hold off;
   
    figure(2);
    plot(x, f1.*f2, 'b');
end