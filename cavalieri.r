install.packages("ggplot2")
library(ggplot2)

plot_cavalieri <- function() {
   x <- seq(-2, 2, length.out = 100)
   y1 <- sqrt(4 - x^2) # Equation of a semicircle
   y2 <- x + 2 # Equation of a shifted line
  
   df <- data.frame(x = c(x, rev(x)), y = c(y1, rev(y2)), group = rep(c("Semicircle", "Straight"), each = length( x)))
  
   ggplot(df, aes(x, y, group = group, color = group)) +
     geom_polygon(fill = NA) +
     theme_minimal() +
     labs(title = "Cavalieri's Principle",
          x = "X axis", y = "Y axis",
          color = "Solids") +
     theme(legend.position = "top")
}

plot_cavalieri()
