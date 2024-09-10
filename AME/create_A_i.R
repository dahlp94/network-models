# generate A_i = (a_i, b_i).Transpose
# We will generate 4 samples
source("rwish.R")
source("rmvnorm.R")

# fixing number of samples to 4
n <- 4

# generating additive effects covariance matrix
S0 <- rwish(diag(n))

# mean for the additive effects
M0 <- rep(0, n)
