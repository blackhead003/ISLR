#Question 9, Chapter 3

library(ISLR)
library(car)
pairs(Auto)  # To make a scatterplot matrix
names(Auto)
cor(Auto[1:8])  # making a correlation matrix
fit <- lm(mpg ~ . - name, data=Auto)
summary(fit)
par(mfrow=c(2,2))
plot(fit)
fit2 <- lm(mpg ~ weight + displacement + cylinders + weight * displacement + cylinders * displacement, data = Auto)
summary(fit2)
par(mfrow = c(2, 2))
plot(log(Auto$horsepower), Auto$mpg)
plot(sqrt(Auto$horsepower), Auto$mpg)
plot((Auto$horsepower)^2, Auto$mpg)
