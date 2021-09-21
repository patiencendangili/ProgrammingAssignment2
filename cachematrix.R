## Put comments here that give an overall description of what your
## functions do all commits

## Write a short comment describing this function
makecachematrix<-function(x=matrix()){
  ##this function creates  a special "matrix" object which can cache its inverse
}

makeCacheMatrix <- function(x = matrix()) {
  ##define the argument with a default mode of the "matrix"
  inv<-NULL##will hold value of matrix inverse
  set<-function(y){
    ##to define the set function to assign new
    x<<-y ## matrix value in parent environment
    inv<<-NULL ## if new matrix ,reset inverse to NULL
  }
get<-function()x##define the get function and returns matrix value argument
setinverse<-function(inverse)inv<<-inverse##assigns value of inverse in parent environment
getinverse<-function()inv##gets inverse when called
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix"
##if the matrix does not change after the inverse is found,
##then cache solve will get the inverse from the cache  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
      return(inv)
  }
    data<-x$setinverse(inv)
    inv
  
}

