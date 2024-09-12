source("rwish.R")
source("create_A_i.R")
source("create_M_i.R")
source("create_err.R")

set.seed(0)

# fixing number of samples to 4
n <- 4

## ---------------- Simulating Additive effects ----------------
#
# p: dimension of the additive effects
p <- 2
# generating additive effects covariance matrix
S0 <- rwish(diag(p))
# mean for the additive effects
m0 <- rep(0, each = p)
A <- get_Additives(n, m0, S0)

## ---------------- Simulating Multiplicative effects ----------------
#
# dimension of the multiplicative effects (i.e each U_i and V_i)
r <- 3
# generating multiplicative effects covariance matrix
S1 <- rwish(diag(2*r))
# mean for the multiplicative effects
m1 <- rep(0, each = 2*r)
M <- get_Multiplicatives(n, r, m1, S1)

## ---------------- Simulating Errors ----------------
#
# p: dimension of the additive effects
#p <- 2
m2 <- rep(0, each = p)  # Mean vector
sigma <- 2  # Standard deviation
rho <- 0.5  # Correlation coefficient 
# Create covariance matrix
S2 <- sigma^2 * matrix(c(1, rho, rho, 1), nrow = 2)
Err <- get_Errors(n, m2, S2)

## ---------------- Generating the sociomatrix ----------------
aOne.T <- outer(A$a, rep(1,each = n))
oneB.T <- outer(rep(1,each = n), A$b)
UV.T <- M$U %*% t(M$V)
E <- Err$E

# Sociomatrix
Y <- aOne.T + oneB.T + UV.T + E

