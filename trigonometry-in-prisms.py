import math

def semiperimeter(a, b, c):
     return (a + b + c) / 2

def surface_area(a, b, c):
     s = semiperimeter(a, b, c)
     area = a * b + a * c + b * c + 2 * math.sqrt(s * (s - a) * (s - b) * (s - c))
     return area

def volume_prisma_triangle(a, b, c, h):
     volume = (1 / 4) * h * math.sqrt((-a + b + c) * (a - b + c) * (a + b - c))
     return volume

# Example of use
a = 6
b = 8
c = 10
h = 5

area = surface_area(a, b, c)
volume = volume_prism_triangle(a, b, c, h)

print("Surface Area:", area)
print("Volume:", volume)
