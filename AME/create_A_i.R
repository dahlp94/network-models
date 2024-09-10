# generate A_i = (a_i, b_i).Transpose
# We will generate 4 samples

#source("rwish.R")
source("mvrnorm.R")

# fixing number of samples to 4
#n <- 4

# p: dimension of the additive effects
#p <- 2

# generating additive effects covariance matrix
#S0 <- rwish(diag(p))

# mean for the additive effects
#m0 <- rep(0, each = p)

#mvrnorm(n, m0, S0)

get_Additives <- function(n, m0, S0) {
  A <- mvrnorm(n, m0, S0)
  
  return(list(a = A[,1],
              b = A[,2]))
  
}








# # Set the parameters
# mu <- c(0, 0)  # Mean vector
# sigma <- matrix(c(1, 0.5, 0.5, 1), nrow = 2)  # Covariance matrix
# 
# # Generate samples
# n_samples <- 1000
# samples <- mvrnorm(n_samples, mu, sigma)
# 
# # Plot the results
# plot(samples, main = "Samples from 2D Multivariate Normal Distribution",
#      xlab = "X1", ylab = "X2", pch = 20, col = "blue")














