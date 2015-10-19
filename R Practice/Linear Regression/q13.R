# Question 13, Chapter 3

set.seed(1)
x <- rnorm(100)
eps <- rnorm(100, mean = 0, sd = sqrt(0.25))
y = -1 + 0.5*x + eps
plot(x, y, pch = 21, col="red", bg="orange")
fit <- lm(y~x)
abline(fit, lwd=2, col = "blue")
abline(-1, 0.5, lwd = 2, col = "red")
legend("topleft", legend = c("Least Square", "Regression"), col = c("red", "blue"), lty = c(1,1))

# Trying a quadratic term to see if it makes it better
fit2 <- lm(y ~ x + I(x^2))
summary(fit2)

# With less noise, hence will be changing the variance of the error term and reducing it
set.seed(1)
eps2 <- rnorm(100, mean = 0, sd = sqrt(0.125))
y2 = -1 + 0.5*x + eps2
plot(x2, y2, pch = 21, col="red", bg="orange")
fit3 <- lm(y2~x2)
abline(fit3, lwd = 2, col="blue")
abline(-1, 0.5, lwd = 2, col = "red")
summary(fit3)

# With more noise, hence will be changing the variance of the error term and increase it
set.seed(1)
eps3 <- rnorm(100, mean = 0, sd = sqrt(0.5))
y3 = -1 + 0.5*x + eps3
plot(x2, y3, pch = 21, col="Red", bg="Orange")
fit4 <- lm(y3~x2)
abline(fit4, lwd = 2, col="blue")
summary(fit4)
