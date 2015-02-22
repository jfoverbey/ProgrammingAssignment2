## 2/22/2015
## My Poor attempt to solve this problem returning the inverse of a matrix
## makeCacheMatrix: replace the mean function from example with solve for the inverse
## cacheSolve: call my getinverse and setinverse functions in makeCacheMatrix 
## to return the inverse if it is cached if not then get the inverse and cached it

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getmean = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getinvese()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
