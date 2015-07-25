## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function is going to set a matrix, set the inverse of that matrix
## and store it in the cache.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function()m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Write a short comment describing this function
## This formula will check if we already have an Inverse Matrix in our cache
## and take it. Otherwise is going to "call" our matrix and calculate the 
## inverse using the "solve" function, giving us the inverse matrix back.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix,...)
  x$setmatrix(m)
  m
}
