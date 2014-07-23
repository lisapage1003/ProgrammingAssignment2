## Write a pair of functions that cache the inverse of a matrix
## Matrix inversion is usually a costly computation and their 
## may be some benefit to caching the inverse of a matrix rather
## than compute it repeatedly

## 1.	makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
	
		x <<- y
		m <<- NULL
	
	}
	get <- function() x
	setinverse <- function(inverse) m <<- inverse
	getinverse <- function() m
	list(set = set, get = get, 
	      setinverse = setinverse, 
	      getinverse = getinverse)

}

## 2.	cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

## Calculates the inverse of the special "matrix" created 
## with the above function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if (!is.null(m)) {
        	message("getting cached data")
        	retuen(m)        	
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
