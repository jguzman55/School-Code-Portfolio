setwd("C:url/Lab5")

getwd()

library(MASS)

Boston


?Boston

#away from the river
chas0 <- subset(Boston,chas == 0)

#on the river
chas1 <- subset(Boston,chas == 1)

write.csv(chas0, "Chas0.csv")

write.csv(chas1, "Chas1.csv")

getwd()

summary(Boston)

#Median values of houses on the river # Add llines for quartiles for both median & Student teacher ratios
summary(chas1$medv)

#Median values of houses away from the river
summary(chas0$medv)

#Student-Teacher Ratio of communities on the river
summary(chas1$ptratio)

#Student-Teacher Ratio of communities away the river
summary(chas0$ptratio)

#SD values of houses on the river
sd(chas1$medv)

#SD values of houses away from the river
sd(chas0$medv)


#SD Student-Teacher Ratio of communities on the river
sd(chas1$ptratio)

#SD Student-Teacher Ratio of communities away the river
sd(chas0$ptratio)

gCentroid(chas0$ptratio)
