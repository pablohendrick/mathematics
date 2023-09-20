# Standard atmosphere model parameters
T0 <- 288.15 # Temperature at sea level in Kelvin
P0 <- 101325 # Pressure at sea level in Pascal
R <- 287.05 # Specific gas constant for air in J/(kg*K)
L <- 0.0065 # Temperature lapse rate in K/m

# Altitude in meters
altitude <- seq(0, 10000, by = 100) # From 0 to 10000 meters, with 100-meter intervals

# Calculate air density as a function of altitude using the standard atmosphere model
temperature <- T0 - L * altitude
pressure <- P0 * (1 - (L * altitude) / T0) ^ (g / (R * L))
density <- pressure / (R * temperature)

# Plot air density as a function of altitude
plot(altitude, density, type = "l", xlab = "Altitude (m)", ylab = "Air Density (kg/m^3)", main = "Vertical Profile of Air Density")
