source("mvrnorm.R")

# Set parameters
n <- 1000  # Number of pairs to generate
mu_vector <- rep(0, each = 2)  # Mean vector
sigma <- 2  # Standard deviation
rho <- 0.5  # Correlation coefficient 

# Create covariance matrix
cov_matrix <- sigma^2 * matrix(c(1, rho, rho, 1), nrow = 2)










