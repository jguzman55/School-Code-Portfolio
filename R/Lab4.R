setwd("C:url/Lab4")

getwd()

a <- seq(-5,5,0.05)
 
#plot1
plot(a,dnorm(a),type="l",ylab = "Probability Density",yaxt="n",xlab = "", main = "Three Probability Density Functions")

#we use 11 for 12 data points (n-1)
lines(a,dt(a,11),col="thistle")

#6 data points
lines(a,dt(a,5),col="salmon")

#plot2
b <- seq(0,10,.5)

c2 <- seq(0,40,1)

#yaxt removes numbers from axis
plot(b,dbinom(b,10,0.5),xlim=c(0,40), type = "p", ylab = "Probability Density", yaxt="n",xlab = "", main = "Binomial Distribution")

lines(c2,dbinom(c2,40,0.5),col="salmon",type = "p")

lines(b,dnorm(b,5,1.6),col="red", type = "l", xlim=c(0,10))

lines(c2,dnorm(c2,20,3.2),col="red",type = "l",xlim=c(0,40))

#plot3
d <- seq(0,40,.5)

#6 data points
plot(d,dchisq(d,5),type="l", ylab = "Probability Density",yaxt="n",xlab = "", main ="Chi-Square Distributions (X^2)")

#13 data points
lines(d,dchisq(d,12),type="l", col="blue")

#21 data points      
lines(d,dchisq(d,20),type="l", col="magenta")

#plot4
faithful

write.csv(faithful,"faithful.csv")

?faithful

summary(faithful)

qqnorm(faithful$waiting, ylim =c(40,100.0), main = "Old Faitful Eruption Data", xlab = "Z-Scores", ylab = "Waiting Time for Next Eruption", plot.it = TRUE, datax = FALSE, col="salmon")

