source("mvrnorm.R")

get_Multiplicatives <- function(n, r=2, m1, S1) {
  M <- mvrnorm_cholesky(n, m1, S1)
  return(list(U = M[,1:r],
              V = M[,(r+1):(2*r)]))
}