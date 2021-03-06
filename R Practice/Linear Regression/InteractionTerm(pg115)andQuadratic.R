library(MASS)
library(ISLR)
attach(Boston)
lm.fit = lm(medv~lstat*age)  # Interaction term is made between lstat and age
summary(lm.fit)
q.fit = lm(medv~lstat + I(lstat, 2)); summary(q.fit)
plot(medv~lstat)
points(lstat, fitted(q.fit), col="red", pch="-")
fit7 = lm(medv~poly(lstat, 4))
points(lstat, fitted(fit7), col="blue", pch="-")
