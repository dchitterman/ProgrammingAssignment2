My function will allow me to save time and money, instead of repeating a function 
continuosly .

## functions do
The function will compute a special matrix which will cache its inverse.

## Write a short comment describing this function
Instead of looping it will give us the inverse of x 
  makeCacheMatrix <- function(x = matrix()) {
    inv <-NULL
    set <- function(y){
      x <<- y
      inv <<- NULL 
      get <-function()[x]
      setInverse <- function(inverse){inv <<- inverse}
      getInverse <- function(){inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    }

}


## Write a short comment describing this function
this function will solve the inverse when it return null.
cacheSolve <- function(x, ...) {inv <- x$getInverse()
+       if(!is.null(inv)){
  +             message("getting cached data")
  +             return(inv)
  +       }
+       mat <- x$get()
+       inv <- solve(mat, ...)
+       x$setInverse(inv)
+       inv
        ## Return a matrix that is the inverse of 'x'
}
