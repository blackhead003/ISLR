# Question 10, Chapter 3

library(ISLR)
data("Carseats")

#Multiple regression to predict Sales using Price, Urban and US
fit <- lm(Sales ~ Price + Urban + US, data=Carseats)
summary(fit)
fit2 <- lm(Sales ~ Price + US, data=Carseats)
summary(fit2)
confint(fit2)  # to get 95% confidence interval
par(mfrow=c(2,2))
plot(fit2)
