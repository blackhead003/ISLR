years <- c(1, 3, 4, 6, 8, 10, 12, 14, 18)
absent <- c(8, 6, 7, 7, 6, 4, 5, 4, 2)
x = years
y = absent
plot(x,y, xlab="x=Number of years working at university", ylab="y=Number of absent days", main="")
plot(x,y, pch=21,col="red",bg="orange", xlab="x=Number of years working at university", ylab="y=Number of absent days", main="")
lm.res=lm(y~x)
abline(lm.res)
lm.res
# the equation is y = 8.0904 - 0.3133x
yhat = 8.0904 - 0.3133*x
yhat
points(x, yhat, pch=22, col="black", bg="blue")
resid = y - yhat
resid
cbind(x, y, yhat, resid)
c(x[1], x[1])
for (i in 1:9) {
  lines(c(x[i], x[i]), c(y[i], yhat[i]), lwd=2, col="green")
}
plot(x, resid, col="red", bg="orange", pch=21, xlab="x=Number of years working at the university", ylab="Residuals")