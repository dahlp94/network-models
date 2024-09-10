source("rwish.R")
source("mvrnorm.R")
source("create_A_i.R")

# fixing number of samples to 4
n <- 4

# p: dimension of the additive effects
p <- 2

# generating additive effects covariance matrix
S0 <- rwish(diag(p))

# mean for the additive effects
m0 <- rep(0, each = p)


A <- get_Additives(n, m0, S0)

