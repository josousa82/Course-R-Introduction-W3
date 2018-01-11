cacheMatrx <- function(m, ...){
  
  m.inv <- m$get.inv()
  
  if(!is.null(m.inv)){
    message("Caching data...")
    return(m.inv)
  }
  m.inv <- solve(m$get(), ...)
  m$set.inv(m.inv)
  m.inv
}