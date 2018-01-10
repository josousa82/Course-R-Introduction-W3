## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrInv <- NULL
  
  getx <- function() x
  
  set <- function(y){
    x <<- y
    matrInv <<- NULL
  }
  
  get <- function(){
    matrInv
  }
  
  setInv <- function(inverse){
    matrInv <<- inverse
  }
  
  getInV <- function(){
    matrInv
  }
  
  list(set = set, get = get, setInv = setInv, getInV = getInV, getx = getx)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  
  if(!is.null(inv)){
    print("Getting data ...")
    return(inv)
  }
  
  m <- x$get()
  inv <- solve(m)
  x$setInv(inv)
  inv
  
}