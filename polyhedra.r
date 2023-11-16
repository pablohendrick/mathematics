# Function to calculate Tetrahedron Area, Sum of Face Angles, Number of Edges
tetrahedron <- function() {
    # Tetrahedron Area Calculation Formula:
    # Area = sqrt(3) * side^2
    
    side <- as.numeric(readline(prompt = "Enter the side length of the tetrahedron: "))
    area <- sqrt(3) * side^2
    
    # Sum of Face Angles for Tetrahedron (in radians)
    sum_angles <- 2 * pi
    
    # Number of edges in a Tetrahedron
    num_edges <- 6
    
    return(list(area = area, sum_angles = sum_angles, num_edges = num_edges))
}

# Function to calculate Hexahedron (Cube) Area, Sum of Face Angles, Number of Edges
hexahedron <- function() {
    # Hexahedron (Cube) Area Calculation Formula:
    # Area = 6 * side^2
    
    side <- as.numeric(readline(prompt = "Enter the side length of the hexahedron (cube): "))
    area <- 6 * side^2
    
    # Sum of Face Angles for Hexahedron (Cube) (in radians)
    sum_angles <- 4 * pi
    
    # Number of edges in a Hexahedron (Cube)
    num_edges <- 12
    
    return(list(area = area, sum_angles = sum_angles, num_edges = num_edges))
}

# Function to calculate Octahedron Area, Sum of Face Angles, Number of Edges
octahedron <- function() {
    # Octahedron Area Calculation Formula:
    # Area = 2 * sqrt(3) * side^2
    
    side <- as.numeric(readline(prompt = "Enter the side length of the octahedron: "))
    area <- 2 * sqrt(3) * side^2
    
    # Sum of Face Angles for Octahedron (in radians)
    sum_angles <- 4 * pi
    
    # Number of edges in an Octahedron
    num_edges <- 12
    
    return(list(area = area, sum_angles = sum_angles, num_edges = num_edges))
}

# Function to calculate Dodecahedron Area, Sum of Face Angles, Number of Edges
dodecahedron <- function() {
    # Dodecahedron Area Calculation Formula:
    # Area = 3 * sqrt(25 + 10 * sqrt(5)) * side^2
    
    side <- as.numeric(readline(prompt = "Enter the side length of the dodecahedron: "))
    area <- 3 * sqrt(25 + 10 * sqrt(5)) * side^2
    
    # Sum of Face Angles for Dodecahedron (in radians)
    sum_angles <- 6 * pi
    
    # Number of edges in a Dodecahedron
    num_edges <- 30
    
    return(list(area = area, sum_angles = sum_angles, num_edges = num_edges))
}

# Function to calculate Icosahedron Area, Sum of Face Angles, Number of Edges
icosahedron <- function() {
    # Icosahedron Area Calculation Formula:
    # Area = 5 * sqrt(3) * side^2
    
    side <- as.numeric(readline(prompt = "Enter the side length of the icosahedron: "))
    area <- 5 * sqrt(3) * side^2
    
    # Sum of Face Angles for Icosahedron (in radians)
    sum_angles <- 5 * pi
    
    # Number of edges in an Icosahedron
    num_edges <- 30
    
    return(list(area = area, sum_angles = sum_angles, num_edges = num_edges))
}

# Example usage:
result <- tetrahedron()
cat("Tetrahedron Area:", result$area, "\n")
cat("Sum of Face Angles:", result$sum_angles, "radians\n")
cat("Number of Edges:", result$num_edges, "\n")
