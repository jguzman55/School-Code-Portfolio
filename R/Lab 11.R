setwd("C:url/Lab11")

getwd()

#CO2 = rate that the plants 'breathe in'(uptake) 

CO2

? CO2

hist(CO2$uptake/CO2$conc, breaks = 25)

qqnorm(CO2$uptake/CO2$conc)

#first argument is the formula, 
wilcox.test(uptake/conc~Treatment,CO2)

wilcox.test(uptake/conc~Type,CO2)

Q <- subset(CO2,Type== "Quebec")

M <- subset(CO2,Type== "Mississippi")

wilcox.test(uptake/conc~Treatment,Q)

wilcox.test(uptake/conc~Treatment,M)

#testing if it comes from one population or two
#P-value <0.05 = reject null hypothesis

kruskal.test(uptake/conc~Plant,CO2)

summary(Q)
summary(M)
