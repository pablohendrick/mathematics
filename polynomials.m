% Remainder theorem
function remainder = remainderTheorem(coefficients, x)
    polynomial = polyval(coefficients, x);
    remainder = polynomial;
end

coefficients = [3, -5, 2, 1]; % Insert the polynomial coefficients
x = 2; % Value to find the remainder
remainder = remainderTheorem(coefficients, x);
fprintf('The remainder is: %f\n', remainder);

% Viète's relations
function [sum_roots, product_roots] = vieteRelations(coefficients)
    degree = length(coefficients) - 1;
    sum_roots = -coefficients(end - 1) / coefficients(end);
    product_roots = (-1)^degree * coefficients(1) / coefficients(end);
end

coefficients = [1, -6, 11, -6]; % Insert the polynomial coefficients
[sum_roots, product_roots] = vieteRelations(coefficients);
fprintf('The sum of roots is: %f\n', sum_roots);
fprintf('The product of roots is: %f\n', product_roots);

% Root Finding
coefficients = [1, -3, -4, 12]; % Insert the polynomial coefficients
roots = roots(coefficients);
fprintf('The roots are: ');
disp(roots');

% Briot-Ruffini method
function [quotient, remainder] = briotRuffini(dividend, divisor)
    n = length(dividend);
    quotient = zeros(1, n - length(divisor));
    remainder = dividend(1:length(divisor));
    for i = length(divisor):n
        quotient(i - length(divisor) + 1) = remainder(1) / divisor(1);
        remainder = remainder - quotient(i - length(divisor) + 1) * divisor;
        if i < n
            remainder = [remainder(2:end) dividend(i + 1)];
        end
    end
end

dividend = [2, -5, 3, -1]; % Coefficients of the dividend
divisor = [1, -1]; % Coefficients of the divisor
[quotient, remainder] = briotRuffini(dividend, divisor);
fprintf('The quotient is: ');
disp(quotient);
fprintf('The remainder is: ');
disp(remainder);
