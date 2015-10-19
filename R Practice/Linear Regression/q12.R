# Question 12, Chapter 3

# Generate an example with n = 100 where the coefficient estimate for the resgression of X onto Y is different from the coefficient estimate for the regression of Y onto X

set.seed(1)
x <- rnorm(100)
y <- 2 * rnorm(100, sd=0.1)
fit1 <- lm(y ~ x)
fit2 <- lm(x ~ y)

#generate with same coefficients. Part c.
# One way to have identical values like below
p <- 1:100
q <- 100:1
fit3 <- lm(p ~ q)
coefficients(fit3)
fit4 <- lm(q ~ p)
coefficients(fit4)

# Another way is to have no intercept