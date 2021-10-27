########################
# 2.3.1 Basic Commands #
########################
# create vector x and return it
x <- c(1,3,2,5)
x

# create vector without <-
x = c(1,6,2)
x
y = c(1,4,3)
y

# check length
length(x)
length(y)

# vector addition
x+y

# list all objects created, remove x and y
ls()
rm(x,y)
ls()

# remove all objects
rm(list=ls())
ls()

# learn about the matrix function
?matrix

# create a matrix with 2 rows and 2 columns, defaults to column population
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x

# create a matrix with 2 rows and 2 columns, but populate by row
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2, byrow=TRUE)
x

# square root x and square x
sqrt(x)
x^2

# rnorm to generate random normal variables, and then calculate correlation
?rnorm
x = rnorm(n=50)
y = x + rnorm(n=50, mean=50, sd=.1)
cor(x,y)

# set seed for randomization
set.seed(seed=1303)
rnorm(n=50)

# set seed, calculate mean, variance, and standard deviation
set.seed(seed=3)
y = rnorm(n=100)
mean(y)
var(y)
sqrt(var(y))
sd(y)

##################
# 2.3.2 Graphics #
##################
# basic plot
x = rnorm(n=100)
y = rnorm(n=100)
plot(x=x, y=y)
plot(x=x, y=y, xlab="This is the x-axis", ylab="This is the y-axis", main="Plot of X and Y", col="green")

# create pdf
pdf(file="figure.pdf")
plot(x=x, y=y, col="green")
dev.off()

# create jpeg
jpeg(file="figure.jpeg")
plot(x=x, y=y, col="green")
dev.off()

# create a sequence
x= seq(1, 10)
x
x = 1:10
x
x = seq(-pi, pi, length=50)
x