## This program contains two functions
## makeCacheMatrix: This function returns a list with functions to set and get a matrix to and from cache
## to set and get Inverse of a matrix to and from cache
## cacheSolve: This function checks whether the inverse of the matrix is already present in the cache
## If it is present in the caches then the inverse is retrieved from the cache else
## it creates the inverse of matrix, stores it in the cache and returns the inverse.



## This function returns a list with functions to set and get a matrix to and from cache
## to set and get Inverse of a matrix to and from cache

makeCacheMatrix <- function(x = matrix()) { 
  
 m <- NULL 
    
     set <- function(y){ 
      x <<- y 
         m <<- NULL 
       } 
      
     get <- function(){ 
         x 
       } 
      
     setInverse <- function(solve){ 
         m <<- solve 
       } 
      
     getInverse <- function(){ 
         m 
       } 
      
     list(set = set, get = get, 
                    setInverse = setInverse, 
                    getInverse = getInverse) 
   } 
 

## This function takes a matrix and returns the inverse of the matrix. If the matrix
## This function checks whether the inverse of the matrix is already present in the cache
## If it is present in the caches then the inverse is retrieved from the cache else
## it creates the inverse of matrix, stores it in the cache and returns the inverse.


cacheSolve <- function(x, ...) { 
## Return a matrix that is the inverse of 'x' 
  
     m <- x$getInverse() 
      
     if(!is.null(m)) { 
         message("getting cached data") 
         return(m) 
     } 
      
     data <- x$get() 
     m <- solve(data, ...) 
     x$setInverse(m) 
     m 
} 

