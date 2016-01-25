## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Set the value of the matrix
# Get the value of the matrix
# Set the value of inverse of the matrix
# Get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }

  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function
# The folllowing function returns the inverse of the matrix,
# first check if inverse is already computed, if yes gets the result else
# skips computation, if it's not compute the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("Get Cached Data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
