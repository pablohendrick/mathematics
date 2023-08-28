semiperimeter <- function(a, b, c) {
  return((a + b + c) / 2)
}

surface_area <- function(a, b, c) {
  s <- semiperimeter(a, b, c)
  area <- a * b + a * c + b * c + 2 * sqrt(s * (s - a) * (s - b) * (s - c))
  return(area)
}

volume_prisma_triangle <- function(a, b, c, h) {
  volume <- (1 / 4) * h * sqrt((-a + b + c) * (a - b + c) * (a + b - c))
  return(volume)
}

# Example of use
a <- 6
b <- 8
c <- 10
h <- 5

area <- surface_area(a, b, c)
volume <- volume_prisma_triangle(a, b, c, h)

cat("Surface Area:", area, "\n")
cat("Volume:", volume, "\n")

print("Volume:", volume)
