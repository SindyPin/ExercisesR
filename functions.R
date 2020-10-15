# 1. Creating a function: 
add2 <- function(x, y) {
        x+y
}

# 2. Creating a vector with numbers above 10 (if the user doesn't define the value for "n",
# there will aappear an error on the screen):
above10 <- function(x) {
        use<- x > 10
        x[use]
}

# 2. Creating a vector with numbers above 10 (in this case, the user doen't need to define
# the value of "n", it's predetermined to be 10):
above <- function(x, n = 10) {
        use <- x >n
        x[use]
}

# Creating some matrixes or dataframe and calculate the mean of the numbers inside it: 
# nc = number of columns
# ncol = function for the number os columns
# means <- numeric(nc) = a numeric vector that store the means of each column 
# (the lenght of this vector has to equal the number of columns)
columnmean <- function(x, removeNA = TRUE) {
        nc <- ncol(x)
        means <- numeric(nc)
        for(i in 1:nc) {
                means[i] <- mean(x[,i], na.rm = removeNA)
        }
        means
}

# Understanding lexical vs. Dinamic Scoping:

# Exercise 1:
y <- 10
f <- function(x) {
        y <- 2
        y^2 + g(x)
}
g <- function(x) {
        x*y
}

# Exercise 2:
g <- function(x) {
        a <- 3
        y <- 3
        x+a+y
}
