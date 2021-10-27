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

# create a contour plot
y = x
f = outer(x, y, function(x,y)cos(y)/(1+x^2))
contour(x, y, f)
contour(x, y, f, nlevels=45, add=T)
fa = (f-t(f))/2
contour(x, y, fa, nlevels=15)

# create a heatmap or 3D plot
image(x, y, fa)
persp(x, y, fa)
persp(x, y, fa, theta=30)
persp(x, y, fa, theta=30,  phi=20)
persp(x, y, fa, theta=30,  phi=70)
persp(x, y, fa, theta=30,  phi=40)

##################
# 2.3.3 Indexing #
##################
# matrix A
A = matrix(data=1:16, nrow=4, ncol=4)
A

# access row 2 column 3
A[2,3]

# grab a sub matrix
A[c(1,3),c(2,4)]
A[1:3,2:4]
A[1:2, ]
A[ ,1:2]
A[1, ]

# Use a negative sign to exclude columns or rows
A[-c(1,3), ]
A[ ,-c(1,3)]

# get the dimmensions
dim(A)

######################
# 2.3.4 Loading Data #
######################
# read auto.data
Auto = read.table(file="../data/ALL CSV FILES/Auto.data")
fix(Auto)

# read auto.data and set header
Auto = read.table(file="../data/ALL CSV FILES/Auto.data", header=T, na.strings="?")
fix(Auto)
dim(Auto)
Auto[1:4,]

# remove rows missing data
Auto = na.omit(Auto)
dim(Auto)

# check variable names
names(Auto)

#####################################################
# 2.3.5 Additional Graphics and Numerical Summaries #
#####################################################
# plot the cylinders and mpg
plot(Auto$cylinders, Auto$mpg)
attach(Auto)
plot(cylinders, mpg)

# convert cylinders into qualitative variable
cylinders=as.factor(cylinders)

# with cylinders as qualitive we should get box plots
plot(cylinders, mpg)
plot(cylinders, mpg, col="red")
plot(cylinders, mpg, col="red", varwidth=T)
plot(cylinders, mpg, col="red", varwidth=T, horizontal=T)
plot(cylinders, mpg, col="red", varwidth=T, xlab="Cylinders", ylab="MPG")

# plot a histogram
hist(mpg)
hist(mpg, col=2)
hist(mpg, col=2, breaks=15)

# scatter plot matrix
pairs(Auto)
pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)

# identify values on plot
plot(horsepower, mpg)
identify(horsepower, mpg, name)

# provide summary of data
summary(Auto)
summary(mpg)