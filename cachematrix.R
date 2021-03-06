## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse_m) inverse <<- inverse_m
  getinverse <- function() inverse
  list(set = set, get = get,
       setmean = setinverse,
       getmean = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  matrix_m <- x$get()
  inverse <- solve(matrix_m)
  x$setinverse(inverse)
  inverse
}