# Question 14, Chapter 3
library(car)
set.seed(1)
x1 <- runif(100)
x2 = 0.5*x1+rnorm(100)/10
y = 2+2*x1+0.3*x2+rnorm(100)

plot(x1, x2, pch = 21, bg="orange", col = "red")
cor(x1, x2)
fit <- lm(y ~ x1 + x2)
abline(lm(x2~x1), lwd=2, col="blue")
summary(fit)

fit2 <- lm(y ~ x1)
summary(fit2)

fit3 <- lm(y ~ x2)
summary(fit3)

x1 = c(x1, 0.1)
x2 = c(x2, 0.8)
y = c(y, 6)
lm.fit1 = lm(y~x1+x2)
summary(lm.fit1)
lm.fit2 = lm(y~x1)
summary(lm.fit2)
lm.fit3 = lm(y~x2)
summary(lm.fit3)
par(mfrow=c(1,2))
plot(x1, x2, pch = 21, bg="orange", col = "red")
abline(lm(x2~x1), lwd=2, col="blue")
