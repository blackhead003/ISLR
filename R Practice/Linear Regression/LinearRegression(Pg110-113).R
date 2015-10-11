library(MASS)
library(ISLR)
### Simple Linear Regression
names(Boston) # To get all the headers in the file
?Boston # To know about the dataset
attach(Boston) # To attach it to the environment
plot(medv~lstat, xlab ="Lower Status of the Population", ylab = "Median Value of Owner-occupied homes in $1000s")
confint(lm.fit)  # to get 95% confidence internval
predict(lm.fit, data.frame(lstat=(c(5,10,15))), interval="confidence")  # to predict with confidence internval
predict(lm.fit, data.frame(lstat=(c(5,10,15))), interval="prediction")
predict(lm.fit, data.frame(lstat=(c(35,40,45))), interval="confidence")
plot(lstat,medv,pch="+")
?abline  # to get the least square line
abline(lm.fit, lwd=3, col="red")  # To fit a linear regression line in red color
par(mfrow=c(2,2)) # to divide the plot display in 2 rows and 2 columns
plot(lm.fit)  # plot all possible things about linear regression fit
plot(predict(lm.fit), residuals(lm.fit))  # Plot the residuals
plot(predict(lm.fit), rstudent(lm.fit))  # Plot studentized residuals
plot(hatvalues(lm.fit), pch="+")  # Plot leverage statistics