setwd("C:/url/HalfSemesterProject")

getwd()

WLS <- read.csv("C:/url/2WLS.csv", header = TRUE)

summary(WLS)

Male <- subset(WLS, X1m2f == 1)

Female <- subset(WLS, X1m2f == 2)

Male

summary(Male$AdjParentInc57)

summary(Female$AdjParentInc57)

hist(Male$AdjParentInc57, breaks = 100)

hist(Female$AdjParentInc57, breaks = 100)

summary(Male$AdjYearlyInc75)

summary(Female$AdjYearlyInc75)

hist(Male$AdjYearlyInc75, breaks = 25)

hist(Female$AdjYearlyInc75, breaks = 25)

hist(Male$AdjYearlyInc92)

hist(Female$AdjYearlyInc92, breaks = 25)
  
plot(Male$AdjYearlyInc03, Male$AdjYearlyInc11)

sd(Male$AdjYearlyInc92)

mean(Male$Dep92)

install.packages('compare')

library(compare)

compare(Male,Female)
plot(Male$Dep03, Female$Dep03, type = 'b')

CV <- (sd(Male$Dep92)/mean(Male$Dep92))


#no correlation
plot(Male$Pop57, Male$X75.Degree)
plot(Female$Pop57, Female$X75.Degree)

hist(Female$Pop57)
hist(Male$Pop57)

plot(Male$Dep11, Male$AdjYearlyInc11, type = 'h')
plot(Female$Dep11, Female$AdjYearlyInc11, type = 'h')

plot(mean(Male$AdjYearlyInc11), mean(Female$AdjYearlyInc11), type ='b')

mean(Male$Dep03)

MDep03 <- subset(Male, Dep03 <= 7)

MDep03

mean(MDep03$Dep03)

sd(MDep03$Dep03)

hist(MDep03$Dep03)

plot(MDep03$Cog03Adj)
lines(MDep03$Cog03Adj)

cor(MDep03$Cog03Adj, MDep03$BMI03)

mean(Male$Degree75)
mean(Female$Degree75)


#Keep?
hist(Male$Degree75)
hist(Female$Degree75)

x<- seq(0,7)
smoothScatter(Male$Dep92, Male$Dep11)

lines((cor(Male$Dep92, Male$Dep11)))
qbinom(MDep03,3370, 95)
smoothScatter(Male$Dep11, Female$Dep11)

MPop57 <- subset(Male, Pop57 == 9)

FPop57 <- subset(Female, Pop57 == 9)

MPop57
FPop57

summary(MPop57)

PWLS <- read.csv("C:/url/PopWLS.csv", header = TRUE)

PWLS
  
RichP <- subset(PWLS ,Pop57 == 9)

RichP

MRichP <- subset(RichP, x1m2f == 1)                

MRichP

FRichP <- subset(RichP, x1m2f == 2)     

FRichP

summary(MRichP)

hist(MRichP$Dep03)
hist(MRichP$Health03)
hist(MRichP$Dep11)
hist(MRichP$Health11)
hist(MRichP$Dep92)
hist(MRichP$Health92Adj)

summary(FRichP)

MidP <- subset(PWLS ,Pop57 == 5)

FMidP <- subset(MidP, x1m2f == 2)  
MMidP <- subset(MidP, x1m2f == 1)  

LowP <- subset(PWLS ,Pop57 == 2)

FLowP <- subset(LowP, x1m2f == 2)  
MLowP <- subset(LowP, x1m2f == 1)  

hist(FRichP$Dep03)
hist(FRichP$Health03)
hist(FRichP$Dep11)
hist(FRichP$Health11)
hist(FRichP$Dep92)
hist(FRichP$Health92Adj)

cor.test(FRichP$Dep03, MRichP$Dep03)

qqplot(FRichP$Dep03, MRichP$Dep03)
qqline(FRichP$Dep03)
#compare the health rating, population  of graduating class and depression rating
#do a binom test
#bernoulli: H0: the mean rating for health is = 3
#H1: The mean rating for health is =! 3
binom.test(1)
summary(WLS)
summary(RichP)
summary(MidP)
summary(LowP)
summary(MLowP)
summary(FLowP)
summary(MMidP)
summary(FMidP)
summary(FRichP)
summary(MRichP)

plot(WLS$Dep03, WLS$Health03, type='b')

hist(WLS$Dep03)
lines(WLS$Dep03, WLS$Health03)

fit <- lm(WLS$Dep03 ~ WLS$Health03)
fit
plot(fit)

install.packages("tidyverse")
install.packages("funModeling")
install.packages("Hmisc")

library(funModeling) 
library(tidyverse) 
library(Hmisc)

var.test(WLS$Dep92, WLS$Dep03)

freq(WLS$BMI11)

hist(WLS$BMI11)

plot_num(WLS)  

data_prof=profiling_num(WLS)

describe(WLS)

WLSBMI03<-subset(WLS, BMI03 >= 25) #4492/10317 fraction that is overweight
WLSBMI92<-subset(WLS, BMI92 >= 25) #4415/10317
WLSBMI11<-subset(WLS, BMI11 >= 25) #4017/10317
WLSBMI11<-subset(WLSBMI11, Pop57 == 9)
WLSBMI92<-subset(WLSBMI92, Pop57 < 9)
WLSBMI03<-subset(WLSBMI03, Pop57 != 9)


hist(WLS)

plot(WLS$BMI03, WLS$BMI11)

binom.test()

#Binom Test for population
binom.test(4017,10317, .5)

qbinom(0.5,10317, 0.5)

wilcox.test(WLS$BMI11~WLS$BMI03)
install.packages("dplyr")
install.packages("ggpubr")
library("dplyr")
library("ggpubr")


ggqqplot(WLS$BMI03)
ggqqplot(WLS$Health03)

shapiro.test(MRichP
            )
#Keep to represent the whole population
boxplot(WLS$BMI92,WLS$BMI03, WLS$BMI11,horizontal = TRUE,col = "royal blue", border = "black"
        ,xlab = "Body Mass Index (BMI)", ylab="Survey Years", main ="BMI Distribution by Survey Years")

RichP <- subset(RichP, BMI11 >=18)
summary(RichP$BMI92)

hist(RichP$BMI92)
hist(RichP$Health92Adj, breaks = 8)

summary(WLS$BMI03)

binom.test(4492,10317)

binom.test(608,10317)

hist(RichP$BMI03, breaks = 10, xlim = c(15,50), main = "Frequency of BMI In Larger Cities from 2003-05", xlab = "Body Mass Index (BMI)", col = "blue")

hist(RichP$Health03, breaks = 10)

hist(RichP$BMI11)
hist(RichP$Dep11)

hist(MLowP$BMI92)
hist(MMidP$BMI92)
hist(MRichP$BMI92)
hist(FRichP$BMI92)

hist(RichP$Health11)

lines(density(WLS$BMI03), col = "blue")
