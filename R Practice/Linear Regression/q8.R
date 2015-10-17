# Question 8, Chapter 3

library(ISLR)
data(Auto)
fit <- lm(mpg ~ horsepower, data=Auto)
summary(fit)

# To get the response when the predictor (Response) is 98 with a 95% confidence and prediction intervals
predict(fit, data.frame(horsepower=98), interval="confidence")
predict(fit, data.frame(horsepower=98), interval="prediction")

#Plotting the fit
plot(mpg, horsepower, xlab = "horsepower", ylab = "mpg", main = "Scatterplot of mpg vs. horsepower")
abline(lm(Auto$mpg~Auto$horsepower, data=Auto), lwd=3)
