solve_bhaskara <- function(a, b, c) {
  discriminante <- b^2 - 4*a*c
  
  if (discriminante > 0) {
    x1 <- (-b + sqrt(discriminante)) / (2*a)
    x2 <- (-b - sqrt(discriminante)) / (2*a)
    return(list(x1 = x1, x2 = x2))
  } else if (discriminante == 0) {
    x <- -b / (2*a)
    return(list(x1 = x, x2 = x))
  } else {
    return(NULL)
  }
}

a <- 1
b <- -3
c <- 2

solucao <- solve_bhaskara(a, b, c)

if (!is.null(solucao)) {
  cat("As raízes da equação são:", "\n")
  cat("x1 =", solucao$x1, "\n")
  cat("x2 =", solucao$x2, "\n")
} else {
  cat("A equação não possui raízes reais.", "\n")
}
