## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##create functions to cache the inverse
makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function (y) {
        x <<- y
        i <<- NULL
}
        get <- function () x
        seninverse <- function(inverse) i <<- inverse
        getinverse <- function () i 
        list (set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
        
        
        
}


## Write a short comment describing this function
## Computes the inverse. If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cach



cacheSolve <- function(x, ...) {
        i  <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data  <- x$get()
        i  <- solve(data, ...)
        x$setinverse(i)
        i
}
