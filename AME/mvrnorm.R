mvrnorm_cholesky <- function(n, mu, Sigma) {
  # Get the dimension of the distribution
  p <- length(mu)
  
  # Cholesky decomposition of the covariance matrix
  L <- chol(Sigma)
  
  # Generate standard normal samples
  Z <- matrix(rnorm(n * p), nrow = n, ncol = p)
  
  # Transform to multivariate normal
  X <- Z %*% L + rep(mu, each = n)
  
  return(X)
}