iris

setwd("C:url/Lab2")

getwd()

write.csv(iris,"irislab2.csv")

boxplot(iris)

boxplot(Sepal.Width~Species,main = "Sepal Width by Species",xlab = "Species", ylab = "Sepal Width",data=iris)


#range = 0--
  
boxplot(Sepal.Length~Species, main = "Sepal Length by Species",xlab = "Species", ylab = "Sepal Length", data=iris,range = 0)

###segments(4.5, 8.0, x1 = 4.5, y1 = 8.0) 

summary(iris)

segments(0.75,5.800,3,5.800,lty="dotdash")

hist(iris$Sepal.Length,freq = FALSE, breaks = 8)

hist(iris$Sepal.Length,xlab = "Number of flowers",ylab ="Sepal Length", main = "Histogram of Sepal Lengths", freq = FALSE, breaks = 7  )

sortedvector <- sort(iris$Sepal.Length)

sumvector <- cumsum(sortedvector)

sum(iris$Sepal.Length)

lines(sortedvector, 0.4*sumvector/(876.5))

results <- smooth.spline(sortedvector,0.4*sumvector/(876.5), df =7)

lines(results$x,results$y)

axis(4,at=c(0.0,0.1,0.2,0.3,0.4),labels=c(0,25,50,75,100))

