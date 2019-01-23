## WEEK 3 - Programming Assignment - R Programming - John Hopkins University (Coursera)

## Function that sets and gets the value of a matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function (y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Function that sets and gets the value of the matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return (i)
        }
        data <- x$get()
        i <- solve(data,...)
        x$setinverse(i)
        i
}
