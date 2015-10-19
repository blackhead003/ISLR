set.seed(1)
x = rnorm(100)
y = 2 * x + rnorm(100)

# Regression of y on x without an intercept
fit <- lm(y ~ x + 0)
coefficients(fit)
summary(fit)

# Regression of x on y without an intercept
fit2 <- lm(x ~ y + 0)
coefficients(fit2)
summary(fit2)

# The basic relationship between both of them is that both are same. And y=2x+ε could also be written x=0.5(y−ε).

t <- sqrt(length(x) - 1) * (x %*% y) / sqrt(sum(x^2) * sum(y^2) - (x %*% y)^2)
as.numeric(t)

#Regression with an intercept for y onto x and x onto y
fit3 <- lm(y ~ x)
fit4 <- lm(x ~ y)
summary(fit3)
summary(fit4)
