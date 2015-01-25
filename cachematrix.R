## Put comments here that give an overall description of what your
## functions do

### I modify the example. The vector becomes matrix. The mean becomes inverse.

## Write a short comment describing this function

### First we set and get the value of the matrix.
### Then we set and get the value of the inverse of matrix.

makeCacheMatrix <- function(x = matrix()) {
        matrixinv <- NULL
        set <- function(y) {
                x <<- y
                matrixinv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) matrixinv <<- inverse
        getinv <- function() matrixinv
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

### First, do the checking.
### If the inverse of matrix has computed before, print it out.
### If the inverse of matrix does the exist, run the above fuction.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matrixinv <- x$getinv()
        if(!is.null(matrixinv)) {
                message("getting cached data.")
                return(matrixinv)
        }
        data <- x$get()
        matrixinv <- solve(data)
        x$setinv(matrixinv)
        matrixinv
}
