# De Moivre's Formula
function moivre_formula(z::Complex, n::Int)
    r = abs(z)
    theta = angle(z)
    r_n = r^n
    theta_n = n * theta
    real_part = r_n * cos(theta_n)
    imag_part = r_n * sin(theta_n)
    result = real_part + imag_part * im
    return result
end

# Example usage of De Moivre's formula
z = 3 + 4im  # Complex number (3 + 4i)
n = 3        # Exponent
result_moivre = moivre_formula(z, n)
println("De Moivre's Formula: ", result_moivre)

# Trigonometric and Geometric Representations
function trigonometric_representation(z::Complex)
    r = abs(z)
    theta = angle(z)
    println("Trigonometric Form: $r(cos($theta) + sin($theta)i)")
end

function geometric_representation(z::Complex)
    println("Geometric Form: $(z)")
end

# Example usage of trigonometric and geometric representations
z_trig = 2 + 2im  # Complex number (2 + 2i)
z_geom = 1 - 3im  # Complex number (1 - 3i)

trigonometric_representation(z_trig)
geometric_representation(z_trig)

trigonometric_representation(z_geom)
geometric_representation(z_geom)
