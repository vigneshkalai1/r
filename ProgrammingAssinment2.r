# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the matrix.
#Contains the following functions:
# 1 set     set the value of a matrix
# 2 get      get the value of a matrix
# 3 cacheInverse   get the cahced value (inverse of the matrix)
# 4 getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse<- function(mean) m <<- mean
    getinverse <- function() m
    list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)
}
cacheSolve <- function(x) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached Matrixdata")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
}
