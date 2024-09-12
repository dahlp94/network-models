source("rwish.R")
#source("mvrnorm.R")
#source("create_A_i.R")
#source("create_M_i.R")
source("create_err.R")

# fixing number of samples to 4
n <- 4

# # p: dimension of the additive effects
# p <- 2

# # generating additive effects covariance matrix
# S0 <- rwish(diag(p))
# 
# # mean for the additive effects
# m0 <- rep(0, each = p)
# 
# 
# A <- get_Additives(n, m0, S0)


# ----------------------------------------------------------------------------

# # dimension of the multiplicative effects
# r <- 3
# 
# # generating multiplicative effects covariance matrix
# S1 <- rwish(diag(2*r))
# 
# # mean for the multiplicative effects
# m1 <- rep(0, each = 2*r)
# 
# M <- get_Multiplicatives(n, r, m1, S1)


# ----------------------------------------------------------------------------
# Set parameters for the error matrix

m2 <- rep(0, each = 2)  # Mean vector
sigma <- 2  # Standard deviation
rho <- 0.5  # Correlation coefficient 

# Create covariance matrix
S2 <- sigma^2 * matrix(c(1, rho, rho, 1), nrow = 2)

Err <- get_Errors(n, m2, S2)


