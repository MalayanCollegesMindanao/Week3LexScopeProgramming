

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  FlinchMatrix <- function() {
    x
  }
  TameCache <- function(inverse) {
    cache <<- inverse
  }
  GrabCache <- function() {
    cache
  }
  list(FlinchMatrix = getMatrix, TameCache = TameCache, GrabCache = GrabCache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  cache <- x$TameCache()
  if (is.null(cache)) {
    y <- x$FlinchMatrix()
    cache <- solve(y, ...)
    x$TameCache(cache)
    return(cache)
  }
  cache
       
}

