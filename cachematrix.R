#Matrix inversion is usually a costly calculation and it can be beneficial to cache the inverse of a matrix instead of calculating it repeatedly.
#That's why we use these functions to cache the inverse of a matrix.

#This function creates a special matrix object that you can store 
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
#This function calculates the inverse of the special "matrix" returned by the previous function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inv <- x$getinv()
        if(!is.null(inv)) {
                message("dar resultado caché")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
#If the inverse has already been calculated (and the matrix has not changed),
         #then the cache solution should give the reverse of the cache.

}
