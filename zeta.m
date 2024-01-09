% Definition of the Riemann zeta function
zeta = @(s) sum(1./(1:10000).^s); % Approximation of the series for the zeta function

% Plotting the zeros of the zeta function in the critical strip (0 < Re(s) < 1)
x = linspace(0, 1, 1000); % Real part values between 0 and 1
y = linspace(10, 10000, 10000); % Imaginary part values (considering the first 10000 numbers)
[X, Y] = meshgrid(x, y);
Z = X + 1i*Y;
Zeta_values = arrayfun(zeta, Z);

% Finding nearby zeros
tolerance = 0.1;
zeros_indices = find(abs(Zeta_values) < tolerance);

% Plotting the found zeros in the critical strip
figure;
scatter(real(Z(zeros_indices)), imag(Z(zeros_indices)), 'r.');
xlabel('Real Part');
ylabel('Imaginary Part');
title('Zeros of the Riemann Zeta Function in the Critical Strip');
grid on;
