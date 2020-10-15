install.packages("ISwR")
plot(rnorm(10))
rnorm(15)

# Calculating the BMI:
weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
bmi <- weight/height^2
bmi

# Calculating the mean of the weight:
xbar <- sum(weight)/length(weight)
xbar

# Calculating the SD (Standard Deviation) of the weight:
sd <- sqrt(sum((weight - xbar)^2)/(length(weight)-1))
sd

# Plotting the curve of Height x Weight:
mean(weight)
sd(weight)
plot(Height, Weight)

hh <- c(1.65, 1.70, 1.75, 1.80, 1.85, 1.90)
aprox.bmi <- lines(hh, 22.5 * hh^2)