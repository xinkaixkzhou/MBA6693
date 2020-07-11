setwd("D:/My Documents/GitHub/MBA6693") 
rm(list=ls()) #clear all variables out of the environment


##load required data from working diretory
fac <- read.csv("5factors.csv", header=TRUE)
indu <- read.csv("indu.csv", header=TRUE)

colnames(fac)



indu = indu - fac[,2] #compute the excess return


m1 <- lm(indu[,35] ~ fac[,4])
summary(m1)
plot(m1)


m2 <- lm(indu[,35] ~ fac[,4]+fac[,5]+fac[,6])
summary(m2)
plot(m2)


m3 <- lm(indu[,35] ~ fac[,4]+fac[,5]+fac[,6]+fac[,7]+fac[,8])
summary(m3)

plot(m3)


