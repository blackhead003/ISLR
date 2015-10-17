# Question 8, Chapter 3

library(ISLR)
data(Auto)
fit <- lm(mpg~horsepower, data=Auto)
summary(fit)

# To get the response when the predictor (Response) is 98 with a 95% confidence and prediction intervals
predict(fit, data.frame(horsepower=98), interval="confidence")
predict(fit, data.frame(horsepower=98), interval="prediction")

#Plotting the fit
plot(Auto$horsepower, Auto$mpg, xlab = "horsepower", ylab = "mpg", main = "Scatterplot of mpg vs. horsepower", col="red", bg="orange", pch=21)
abline(fit, lwd=3)

par(mfrow=c(1, 1))

# The residuals plot
plot(Auto$horsepower, residuals(fit), pch=21, col="red", bg="orange")

