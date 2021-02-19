setwd("C:/url/Lab9")

getwd()

temp <- read.csv(file = "C:/url/Temperatures.csv", header=TRUE)

temp

male <- subset(temp,Gender == 2)

female <- subset(temp,Gender == 1)

male

female

womentemp <- female$Body.Temp..Â.F.

mentemp <- male$Body.Temp..Â.F.

hist(womentemp, breaks = 15)    #98.8/9 ---> 11/65

hist(mentemp, breaks = 15)#98.5   22/65

summary(womentemp)

summary(mentemp)

stem(womentemp)

stem(mentemp)

binom.test(12,65, conf.level = 0.95)

binom.test(22,65, conf.level = 0.95)

var.test(mentemp,womentemp)

x