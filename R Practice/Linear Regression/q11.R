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

