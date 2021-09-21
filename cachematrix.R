
## Put comments here that give an overall description of what your
## functions do all the commits

## Write a short comment describing this function
makecachematrix<-function(x=matrix()){
  ##This function special "matrix" object which can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  ##defines the argument with default mode of the "matrix"
  inv<-NULL ##holds the value of matrix inverse
  set<-function(y){## defines the set function to assign new 
    x<<-##value of the matrix in the parent environment
      inv<<-NULL## if there is anew matrix , reset inverse to NULL
    }
get<-function()x## define the get function -returns the value of the matrix argument
setinverse<-function(inverse)inv<<-inverse
##assigns value of inverse in parent environment
getinverse<-function()inv## gets the value of inverse where called
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}
}



## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by  make cache matrix above
##If the inverse has already been computed and the matrix remain unchanged,
##then cache solve will get the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinverse(inv)
  inv
}

