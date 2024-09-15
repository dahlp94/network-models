# working on creating the leftover Z matrix
# working on summing i:i<k and j:k<j for each k.

get_L_shape_elements <- function(matrix, k) {
  n <- nrow(matrix)
  
  if (k < 1 || k > n) {
    return(sprintf("Invalid index. Please provide an index between 1 and %d.", n))
  }
  
  right_elements <- c()
  down_elements <- c()
  
  # Elements to the right
  if (k < n) {
    right_elements <- matrix[k, (k+1):n]
  }
  
  # Elements below
  if (k < n) {
    down_elements <- matrix[(k+1):n, k]
  }
  
  return(list(
    right = right_elements,
    down = down_elements,
    all = c(right_elements, down_elements)
  ))
}

# matrix
M <- matrix(1:16, nrow=4)
n <- 4
k <- 4

# elements to the right (assume 1<=k<n)
M[k, (k+1):n]

# elements to the left (assume n>=k>1)
M[k, 1:(k-1)]

# elements to the down (assume 1<=k<n)
M[(k+1):n, k]

# elements to the up (assume n>=k>1)
M[1:(k-1), k]
## ------------------------------------------------------------------
