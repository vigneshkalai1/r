# Programming Assignment 2: Lexical Scoping

## For the Coursera course [R Programming](https://www.coursera.org/course/rprog)

The following code demonstrates how to use the `assessment3.R` R script.

Lines starting with `#` are simple comments, lines starting with `#>` are things
printed in the output.

	# create a *square* matrix (because `solve` only handles square matrices)
	# create the matrix during the call of makeCacheMatrix()
	a <- makeCacheMatrix( matrix(c(1,2,12,13), nrow = 2, ncol = 2) );

	summary(a);
	#>              Length Class  Mode    
	#> set          1      -none- function
	#> get          1      -none- function
	#> setinverse   1      -none- function
	#> getinverse   1      -none- function

	a$get();
	#>      [,1] [,2]
	#> [1,]    1   12
	#> [2,]    2   13

	cacheSolve(a)
	#> [,1]        [,2]
	#> [1,] -1.1818182  1.09090909
	#> [2,]  0.1818182 -0.09090909

	# the 2nd time we run the function,we get the cached value
	cacheSolve(a)
	#> getting cached data
	#> [,1]        [,2]
	#> [1,] -1.1818182  1.09090909
	#> [2,]  0.1818182 -0.09090909

Alternatively, the matrix can be created after calling a `makeCacheMatrix`
without arguments.

	
	# call makeCacheMatrix without arguments
	a <- makeCacheMatrix();

	# create a square matrix (reason `solve` only handles square matrices )
	a$set( matrix(c(1,2,12,13), nrow = 2, ncol = 2) );
	a$get();
	#>      [,1] [,2]
	#> [1,]    1   12
	#> [2,]    2   13

	cacheSolve(a)
	#> [,1]        [,2]
	#> [1,] -1.1818182  1.09090909
	#> [2,]  0.1818182 -0.09090909

	# the 2nd time we run the function, we get the cached value
	cacheSolve(a)
	#> getting cached data
	#> [,1]        [,2]
	#> [1,] -1.1818182  1.09090909
	#> [2,]  0.1818182 -0.09090909
## Data Science Specialization

* Uses R
* Nine courses
* Goes from raw data to data products
