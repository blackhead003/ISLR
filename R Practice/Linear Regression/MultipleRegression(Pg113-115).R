library(MASS)
library(ISLR)
library(car)
attach(Boston)
lm.fit = lm(medv~lstat+age) # To to multiple regression with varibles
lm.fit = lm(medv~., data=Boston)
lm.fit1 = update(lm.fit, ~.-age-indus)  # to remove variable(s). Usually done when the p-value is low
summary(lm.fit)$r.sq  # to get r square value
summary(lm.fit1)$r.sq
vif(lm.fit)  # To get VIF
