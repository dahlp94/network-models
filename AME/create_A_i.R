# generate A_i = (a_i, b_i).Transpose
# We will generate 4 samples
source("rwish.R")
source("rmvnorm.R")

# fixing number of samples to 4
n <- 4

# generating additive effects covariance matrix
S0 <- rwish(diag(n))

# mean for the additive effects
m0 <- rep(0, each = n)

rmvnorm(n, m0, S0)

get_A_i <- function(n, mu, Sigma) {
  #pass
}



# Set the parameters
mu <- c(0, 0)  # Mean vector
sigma <- matrix(c(1, 0.5, 0.5, 1), nrow = 2)  # Covariance matrix

# Generate samples
n_samples <- 1000
samples <- mvrnorm_2d(n_samples, mu, sigma)

# Plot the results
plot(samples, main = "Samples from 2D Multivariate Normal Distribution",
     xlab = "X1", ylab = "X2", pch = 20, col = "blue")














