%% Pi (π)
n_pi = 100000; % Number of terms for Pi approximation
pi_approximation = 0;
for k = 0:n_pi
    pi_approximation = pi_approximation + ((-1)^k) * (4 / (2 * k + 1));
end

disp(['Approximation of Pi: ', num2str(pi_approximation)]);

%% Euler's Number (e)
n_e = 20; % Number of terms for e approximation
e_approximation = 0;
factorial_value = 1;
for k = 0:n_e
    e_approximation = e_approximation + 1 / factorial_value;
    factorial_value = factorial_value * (k + 1);
end

disp(['Approximation of Euler''s Number (e): ', num2str(e_approximation)]);

%% Golden Ratio (phi)
phi = (1 + sqrt(5)) / 2; % Exact value of the Golden Ratio

disp(['Value of the Golden Ratio (phi): ', num2str(phi)]);

%% Square Root of 2 - "Hipasus of Metaponto" (sqrt(2))
x0 = 1; % Initial approximation for Square Root of 2
f = @(x) x^2 - 2; % Function for which we seek the root
f_prime = @(x) 2 * x; % Derivative of the function
tolerance = 1e-8; % Tolerance for desired accuracy
while abs(f(x0)) > tolerance
    x0 = x0 - f(x0) / f_prime(x0);
end
sqrt_2 = x0;

disp(['Approximation of Square Root of 2: ', num2str(sqrt_2)]);
