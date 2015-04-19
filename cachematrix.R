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
  
  ##create a matrix and saves in cache
  set <- function(y){ 
    x <<- y 
    m <<- NULL 
  } 
  
  ##retrieved a matrix from the cache
  get <- function(){ 
    x 
  } 
  
  ##create inverse of the matrix and save in the cache
  setInverse <- function(solve){ 
    m <<- solve 
  } 
  
  ##retrieve the inverse of the matrix from the cache
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
  
  ##get the inverse of the matrix from the cache
  m <- x$getInverse() 
  
  ## if the inverse is already in the cache then retrieve it
  if(!is.null(m)) { 
    message("getting cached data") 
    return(m) 
  } 
  
  ##if the inverse in not already in the cache then first get the matrix then create
  ##its inverse and the call the method to save it in the cache
  data <- x$get() 
  m <- solve(data, ...) 
  x$setInverse(m) 
  m 
} 

