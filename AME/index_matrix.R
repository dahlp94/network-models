get_elements <- function(matrix, k) {
  n <- nrow(matrix)
  
  if (k < 1 || k > n) {
    return(sprintf("Invalid index. Please provide an index between 1 and %d.", n))
  } 
  
  else if (k==1) {
    right_elements <- M[k, (k+1):n]
    down_elements <- M[(k+1):n, k]
    up_elements <- NULL
    left_elements <- NULL
  }
  
  else if (k==n) {
    right_elements <- NULL
    down_elements <- NULL
    up_elements <- M[1:(k-1), k]
    left_elements <- M[k, 1:(k-1)]
  }
  
  else {
    
    # elements to the right (assume 1<=k<n)
    right_elements <- M[k, (k+1):n]
    
    # elements to the left (assume n>=k>1)
    left_elements <- M[k, 1:(k-1)]
    
    # elements to the down (assume 1<=k<n)
    down_elements <- M[(k+1):n, k]
    
    # elements to the up (assume n>=k>1)
    up_elements <- M[1:(k-1), k]
  }
  
  return(list(
    right = right_elements,
    left = left_elements,
    down = down_elements,
    up = up_elements
  ))
}
