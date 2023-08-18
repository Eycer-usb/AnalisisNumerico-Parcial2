% Calculamos la derivada de la función f(x) = cos(pi*x) - 2*sin(2*pi*x)
% en los puntos x = 0, 0.25, 0.45, 0.63, 0.85 usando la fórmula de derivación de 5 puntos.

X = [0 0.25 0.45 0.63 0.85];
Y = [1 -1.2929 -0.4616 1.0608 0.7270];
for i = 1 : 5 
    der = derivate_5_points(X, Y, X(i) );
    fprintf('Derivada en %f = %f\n', X(i), der);
    fprintf('Derivada Real en %f = %f\n', X(i), - pi*sin(pi*X(i)) - 4*pi*cos(2*pi*X(i)));
    fprintf('Error = %f\n', abs(der + pi*sin(pi*X(i)) + 4*pi*cos(2*pi*X(i)) ));
    fprintf('\n');
endfor

% Calculamos la integral de la funcion segun X y Y suponiendo que no se conoce la forma analitica de 
% la funcion. Para esto se utiliza la regla del trapezoide compuesta con 5 puntos en particiones irregulares.
I = integrate_5_points_trapezoidal(X, Y);
printf('Integral entre %f y %f: %f\n', X(1), X(5), I );
printf('Integral Real entre %f y %f: %f\n', X(1), X(5), (cos(2*pi*0.85) + sin(pi*0.85) - 1)/pi );
printf('Error: %f\n', abs((cos(2*pi*0.85) + sin(pi*0.85) - 1)/pi - I));
