calculate_k <- function(temp_y, temp_x) {
  M <- 11.0421165
  x_half <- 5.02105825 

  numerator <- log((M / (temp_y + 1)) - 1)
  denominator <- x_half - temp_x
  
  if((numerator / denominator) == Inf) {
    return(0)
  } else {
    return(numerator / denominator)
  }
  
  #the if statement is to account for when y is at its maximum value, and also when x equals the Sigmoid midpoint
}



y <- c(0.0074203, 0.3188325, 0.2815891, -0.3171173, -0.0305409, 0.2266773, -0.0216102, 0.2319695, -0.1082007, 0.2246899, 0.6144181, 1.1655192, 1.8038330, 2.7644418, 4.1104270, 5.0470456, 6.1896092, 6.4128618, 7.2974793, 7.8965245, 8.4364991, 8.8252770, 8.9836204, 9.6607736, 9.1746182, 9.5348823, 10.0421165, 9.8477874, 9.2886090, 9.3169916, 9.6270209)
time_x <- c(5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35)
plot(time_x, y)

total <- 0
for(i in 1:31) {
  total <- total + calculate_k(y[i], time_x[i])
}

print(total / 31)
