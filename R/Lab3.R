Indometh

setwd("C:url/Lab3")

getwd()

write.csv(Indometh,"Indometh.csv")

subj1  <- subset(Indometh,Subject==1)

subj2  <- subset(Indometh,Subject==2)

subj3  <- subset(Indometh,Subject==3)

subj4  <- subset(Indometh,Subject==4)

subj5  <- subset(Indometh,Subject==5)

subj6  <- subset(Indometh,Subject==6)

colors()
#plot1
plot(subj1$time,subj1$conc,ylim=c(0,3),type="l",col="royalblue", main= "Change in Indometh concentration over time" ,xlab= "Time (hrs)" ,ylab= "Indometh Concentration (mcg/ml)") #, subj2$time,subj2$conc,col = "royalblue") 


lines(subj2$time,subj2$conc,type="l",col="wheat3")
lines(subj3$time,subj3$conc,type="l",col="mistyrose4")
lines(subj4$time,subj4$conc,type="l",col="mintcream")
lines(subj5$time,subj5$conc,type="l",col="peru")
lines(subj6$time,subj6$conc,type="l",col="snow3")

#Plot2

plot(subj1$time,subj1$conc,ylim=c(0.01,3),log="y",type="l",col="royalblue", main= "Change in Indometh concentration over time" ,xlab= "Time (hrs)" ,ylab= "Logarithmic Indometh Concentration (mcg/ml)") 


lines(subj2$time,subj2$conc,type="l",col="wheat3")
lines(subj3$time,subj3$conc,type="l",col="mistyrose4")
lines(subj4$time,subj4$conc,type="l",col="mintcream")
lines(subj5$time,subj5$conc,type="l",col="peru")
lines(subj6$time,subj6$conc,type="l",col="snow3")

#Plot3
plot(subj1$time,subj1$conc,ylim=c(0.01,3),log="xy",type="l",col="royalblue", main= "Logarithmic Change in Indometh concentration over time" ,xlab= "Time (hrs)" ,ylab= "Indometh Concentration (mcg/ml)") 


lines(subj2$time,subj2$conc,type="l",col="wheat3")
lines(subj3$time,subj3$conc,type="l",col="mistyrose4")
lines(subj4$time,subj4$conc,type="l",col="mintcream")
lines(subj5$time,subj5$conc,type="l",col="peru")
lines(subj6$time,subj6$conc,type="l",col="snow3")

#correlation
 
cor(1/subj1$time,subj1$conc)
cor(1/subj2$time,subj2$conc)
cor(1/subj3$time,subj3$conc)
cor(1/subj4$time,subj4$conc)
cor(1/subj5$time,subj5$conc)
cor(1/subj6$time,subj6$conc)
