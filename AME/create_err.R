source("mvrnorm.R")

# Set parameters
n <- 1000  # Number of pairs to generate
mu_vector <- rep(0, each = 2)  # Mean vector
sigma <- 2  # Standard deviation
rho <- 0.5  # Correlation coefficient 

# Create covariance matrix
cov_matrix <- sigma^2 * matrix(c(1, rho, rho, 1), nrow = 2)

err <- cbind(c(1,2), c(3,4), c(5,6))

E <- matrix(rep(NA, each=9), nrow=3)

E[upper.tri(E)] <- err[1,]
E[lower.tri(E)] <- err[2,]




