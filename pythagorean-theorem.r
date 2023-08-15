calculate_hypotenuse <- function(side1, side2) {
   hypotenuse <- sqrt(side1^2 + side2^2)
   return(hypotenuse)
}

cateto1 <- 3
cateto2 <- 4

hypotenuse_result <- calculate_hypotenuse(leg1, leg2)

cat("The hypotenuse is:", hypotenuse_result, "\n")
