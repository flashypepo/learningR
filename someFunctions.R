# returns the result of adding two values x and y
# 2015_0523 new
add2 <- function(x, y) {
  x + y
}

# return values from an array above value 10
# usage: 
#     x <- 1:20
#     above10(x)
#     [1] 11 12 13 14 15 16 17 18 19 20
# 2015_0523 new
above10 <- function(x) {
  use <- x > 10
  x[use]
}

# return values from an array above a certain threshold
# usage: 
#     x <- 1:20
#     above(x, 12)
#     [1] 13 14 15 16 17 18 19 20
# 2015_0523 new
above<- function(x, n = 10) {
  use <- x > n
  x[use]
}

# removeNA: flag whether to remove NA or not from result...
# Usage:
#      columnmean(airquality)
#      [1]  42.129310 185.931507   9.957516  77.882353   6.993464  15.803922
#
#      columnmean(airquality, FALSE)
#      [1]        NA        NA  9.957516 77.882353  6.993464 15.803922
# 2015_0523 new
columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric (nc)
  for (i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}
