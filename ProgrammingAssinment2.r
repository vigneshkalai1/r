# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the matrix.
#Contains the following functions:
# 1 set     set the value of a matrix
# 2 get      get the value of a matrix
# 3 cacheInverse   get the cahced value (inverse of the matrix)
# 4 getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        #This function sets the matrix
        
        set <- function(y) {
                x <<- y
                
                #Since new matrix is created old cached inverse matrix is flushed 
                m <<- NULL
                
        }
        
        #This function is used to get the matrix 
        
        get <- function()
        {
                x
        }
        #Caches the given inverse matrix
        
        setinverse<- function(mean)
        {
                m <<- mean
        }
        
        #Returns the cached inverse matrix 
        
        getinverse <- function()
        {
                m
        }
        
        #Returns the list of function
        
        list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)
}

#The cacheSolve is used to get cached inverse matrix or if not available create one 

cacheSolve <- function(x) {

        # get the cached value
        
        m <- x$getinverse()
        
        # if a cached value exists return it
        
        if(!is.null(m)) {
                message("getting cached Matrixdata")
                return(m)
        }
        
        # otherwise get the matrix, caclulate the inverse and store in the cache
        
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        
        #Returns the cached inverse matrix 
        
        m
}
