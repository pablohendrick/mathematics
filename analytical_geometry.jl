# Function to calculate the distance between two points (x1, y1) and (x2, y2)
function distance(x1, y1, x2, y2)
    sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

# Example of use:
distance_result = distance(1, 2, 4, 6)
println(distance_result)

# Function to calculate the perimeter of a polygon represented by a list of points
function perimeter(points)
    n = size(points, 1)
    total_perimeter = 0
    
    for i in 1:(n - 1)
        total_perimeter += distance(points[i, 1], points[i, 2], points[i + 1, 1], points[i + 1, 2])
    end
    
    # Adding the distance from the last point to the first point to close the polygon
    total_perimeter += distance(points[n, 1], points[n, 2], points[1, 1], points[1, 2])
    
    return total_perimeter
end

# Example of use:
polygon_points = [1 2; 4 6; 7 8; 3 1]
perimeter_result = perimeter(polygon_points)
println(perimeter_result)

# Function to calculate the midpoint between two points (x1, y1) and (x2, y2)
function midpoint(x1, y1, x2, y2)
    [(x1 + x2) / 2, (y1 + y2) / 2]
end

# Example of use:
midpoint_result = midpoint(1, 2, 4, 6)
println(midpoint_result)

# Function to calculate the centroid of a triangle represented by three points (x1, y1), (x2, y2), (x3, y3)
function centroid(x1, y1, x2, y2, x3, y3)
    [(x1 + x2 + x3) / 3, (y1 + y2 + y3) / 3]
end

# Example of use:
centroid_result = centroid(1, 2, 4, 6, 7, 8)
println(centroid_result)

# Function to check if two lines are parallel
function parallel_line(a1, b1, a2, b2)
    a1 == a2
end

# Example of use:
line1 = 2
line2 = 2
are_parallel = parallel_line(line1, 3, line2, 5)
println(are_parallel)

# Function to check if two lines are perpendicular
function perpendicular_line(a1, b1, a2, b2)
    a1 * a2 == -1
end

# Example of use:
line1 = 2
line2 = -0.5
are_perpendicular = perpendicular_line(line1, 3, line2, 5)
println(are_perpendicular)

# Function to calculate the area of a circle with radius 'r'
function circle_area(r)
    π * r^2
end

# Example of use:
radius = 3
area_result = circle_area(radius)
println(area_result)
