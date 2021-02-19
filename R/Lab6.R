setwd("C:/url/Lab6")

getwd()

library(quantmod)

faithful

?faithful

summary(faithful)

#Waiting Plot

hist(faithful$waiting, ylim =c(0.00,0.06), xlim = c(40.0,100.0), breaks = 40, yaxt="n", freq = FALSE, xlab = "Waiting Time (Minutes)", main ="Histogram of Old Faithrul Waiting Times")

minmax <- seq(43.0,96.0, length.out = 100)

mean(minmax)

sd(minmax)

summary(minmax)


#"0.5" = multiplier
lines(minmax,0.56*dnorm(minmax,mean=53, sd=6.75)+0.485*dnorm(minmax,mean=77.5,sd=3.5),col="blue")

text(53,0.035,"Mean=53", col="salmon")

text(77.5,0.057, "Mean = 77.5", col = "red")

#Eruption Plot
summary(faithful)

hist(faithful$eruptions,ylim = c(0,1),  yaxt="n", xlim = c(1,6), breaks = 40, freq = FALSE, xlab = "Eruption Time (Minutes)", main ="Histogram of Old Faithrul Eruption Times")

minmax <- seq(1.6,5.1, length.out = 100)

lines(minmax,0.83*dnorm(minmax,mean=1.85, sd=0.375)+0.83*dnorm(minmax,mean=4.45,sd=0.45),col="blue")

text(1.85,0.91,"Mean=1.85", col="salmon")

text(4.45,0.76, "Mean = 4.45", col = "red")

