setwd("C:/url/Lab10")

getwd()

library(MASS)

?birthwt

summary(birthwt)

birthwt

summary(aov(bwt~factor(age)*factor(ftv)*factor(ptl),birthwt))

boxplot(bwt~ptl, birthwt, range=0) 

        