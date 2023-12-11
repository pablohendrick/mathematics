# Law of Sines
function law_of_sines(a, b, c, A, B, C)
    sin_A = sin(A)
    sin_B = sin(B)
    sin_C = sin(C)
    
    if a != 0 && sin_A != 0
        return a / sin_A
    elseif b != 0 && sin_B != 0
        return b / sin_B
    elseif c != 0 && sin_C != 0
        return c / sin_C
    else
        return NaN
    end
end

# Example of usage
a = 5.0
b = 7.0
c = 8.0
A = π / 3  # Angle in radians
B = π / 4  # Angle in radians
C = π - A - B

law_of_sines_result = law_of_sines(a, b, c, A, B, C)
println("Result of the Law of Sines: $law_of_sines_result")

# Law of Cosines
function law_of_cosines(a, b, c, C)
    cos_C = cos(C)
    return sqrt(a^2 + b^2 - 2a*b*cos_C)
end

# Example
c = 8.0
a = 5.0
b = 7.0
C = π / 3  # Angle in radians

law_of_cosines_result = law_of_cosines(a, b, c, C)
println("Result of the Law of Cosines: $law_of_cosines_result")

# Arc Operations
angle_in_radians = π / 4

# Arcsine
arcsine = asin(angle_in_radians)
println("Arcsine: $arcsine")

# Arccosine
arccosine = acos(angle_in_radians)
println("Arccosine: $arccosine")

# Arctangent
arctangent = atan(angle_in_radians)
println("Arctangent: $arctangent")

using SymPy

@syms x  # Defining x as a symbol

# Solving the equation
solution = solve(sin(x) - 1//2, x)
println("Solution of the trigonometric equation: $solution")
