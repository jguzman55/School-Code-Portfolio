setwd("C:/url/Lab7")

getwd()

stackloss

#represents the amount of ammonia lost during the process (ammount that goes up the stack, inverse measurement of the factory's efficiency)
stack.loss

?stackloss

#airflow, watertemp, asconc, are all different operating conditions in the factory

#stackloss against airflow
lm(formula = stack.loss ~ Air.Flow, data = stackloss) 

#stackloss against water.temp
lm(formula = stack.loss ~ Water.Temp, data = stackloss) 

#stackloss against acidconcentration
lm(formula = stack.loss ~ Acid.Conc., data = stackloss) 

#Gives r^2 values; **means probability of not being correlated
summary(lm(formula = stack.loss ~ Air.Flow, data = stackloss))

summary(lm(formula = stack.loss ~ Water.Temp, data = stackloss))

summary(lm(formula = stack.loss ~ Acid.Conc., data = stackloss))

# optional but will come back to it; plot()

summary(lm(formula = stack.loss ~ Water.Temp + Air.Flow, data = stackloss))


