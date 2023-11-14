## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invMatrix <- NULL
  set <- function(y) {
          x <<- y
          invMatrix <<- NULL
  }
  get <- function() x
  setinverseM <- function(solve) invMatrix <<- solve
  getinverseM <- function() invMatrix
  list(set = set,
       get = get,
       setinverseM = setinverseM,
       getinverseM = getinverseM)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invMatrix <- x$getinverseM()
  if (!is.null(invMatrix)) {
          message("getting cached data")
          return(invMatrix)
  }
  data <- x$get()
  invMatrix <- solve(data, ...)
  x$setinverseM(invMatrix)
  invMatrix
}
        ## Return a matrix that is the inverse of 'x'

