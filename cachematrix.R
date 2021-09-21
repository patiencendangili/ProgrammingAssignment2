## Put comments here that give an overall description of what your
## functions do all commits

## Write a short comment describing this function
makecachematrix<-function(x=matrix()){
        ##This function creates a special "matrix" object which cancache the inverse

makeCacheMatrix <- function(x = matrix()) {
        ##define the argument with default mode of "matrix"
        inv<-NULL##holds the value of matrivx inverse
        set<-function(y){##define the set function to assign new
                x<<-y##value of matrix in parent environment
                inv<<-NULL## if there is a new matrix,reset inv to NULL
                }
        get<-function()x##define the get function- returns the value of the matrix argument
        setinverse<-function(inverse)inv <<-inverse
        ##asiigns vlue of the inverse in parent environment
        getinverse<-function()inv##gets the value of the inverse when called
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
        ##This function computes the inverse of the special " matrix" returned by the makecachematrix above
        ##if the inverse has already computed and the matrix remain unchanged,
        ##then cachesolve will get the inverse fron the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
        if(!is.null(inv)){
                message("getting the cached data")
                return(inv)
                }
        data<-x$get()
        inv<-solve(data,...)
        x$setinverse
        inv
        
}
