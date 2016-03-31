
## functions do

## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse
##
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## functio calculates inverse if it is not calculated previously

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
 	m<-x$getInverse()
    	
	if(!is.null(m)){
      	message("getting cached data")
      	return(m)
    	}
    	mat<-x$get()
    	m<-solve(mat, ...)
    	x$setInverse(m)
   	m
}
