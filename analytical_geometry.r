# Function to calculate the distance between two points (x1, y1) and (x2, y2)
distance <- function(x1, y1, x2, y2) {
    sqrt((x2 - x1)^2 + (y2 - y1)^2)
}

# Example of use:
distance_result <- distance(1, 2, 4, 6)
cat("Distance result:", distance_result, "\n")

# Function to calculate the perimeter of a polygon represented by a matrix of points
perimeter <- function(points) {
    n <- nrow(points)
    total_perimeter <- 0
    
    for (i in 1:(n - 1)) {
        total_perimeter <- total_perimeter + distance(points[i, 1], points[i, 2], points[i + 1, 1], points[i + 1, 2])
    }
    
    # Adding the distance from the last point to the first point to close the polygon
    total_perimeter <- total_perimeter + distance(points[n, 1], points[n, 2], points[1, 1], points[1, 2])
    
    return(total_perimeter)
}

# Example of use:
polygon_points <- matrix(c(1, 2, 4, 6, 7, 8, 3, 1), ncol = 2, byrow = TRUE)
perimeter_result <- perimeter(polygon_points)
cat("Perimeter result:", perimeter_result, "\n")

# Function to calculate the midpoint between two points (x1, y1) and (x2, y2)
midpoint <- function(x1, y1, x2, y2) {
    c((x1 + x2) / 2, (y1 + y2) / 2)
}

# Example of use:
midpoint_result <- midpoint(1, 2, 4, 6)
cat("Midpoint result:", midpoint_result, "\n")

# Function to calculate the centroid of a triangle represented by three points (x1, y1), (x2, y2), (x3, y3)
centroid <- function(x1, y1, x2, y2, x3, y3) {
    c((x1 + x2 + x3) / 3, (y1 + y2 + y3) / 3)
}

# Example of use:
centroid_result <- centroid(1, 2, 4, 6, 7, 8)
cat("Centroid result:", centroid_result, "\n")

# Function to check if two lines are parallel
parallel_line <- function(a1, b1, a2, b2) {
    a1 == a2
}

# Example of use:
line1 <- 2
line2 <- 2
are_parallel <- parallel_line(line1, 3, line2, 5)
cat("Are parallel:", are_parallel, "\n")

# Function to check if two lines are perpendicular
perpendicular_line <- function(a1, b1, a2, b2) {
    a1 * a2 == -1
}

# Example of use:
line1 <- 2
line2 <- -0.5
are_perpendicular <- perpendicular_line(line1, 3, line2, 5)
cat("Are perpendicular:", are_perpendicular, "\n")

# Function to calculate the area of a circle with radius 'r'
circle_area <- function(r) {
    pi * r^2
}

# Example of use:
radius <- 3
area_result <- circle_area(radius)
cat("Circle area result:", area_result, "\n")

