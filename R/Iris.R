iris

setwd("C:url/R")

getwd()


write.csv(iris,"iris.csv")


subset(iris,Species=="versicolor")

versi <- subset(iris,Species=="versicolor") 
versi1 <- subset(iris,Species=="setosa") 
versi2 <- subset(iris,Species=="virginica") 

summary(versi)
summary(versi1)
summary(versi2)

hist(iris$Petal.Length)

boxplot(iris$Petal.Length)
