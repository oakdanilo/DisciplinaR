arv<-read.csv("./data/trees.csv", sep =  ",")
summary(arv)
var(arv$Girth)
var(arv$Height)
var(arv$Volume)
sd(arv$Girth)
sd(arv$Height)
sd(arv$Volume)
cor(arv)

par(mfrow=c(1,3))
boxplot(arv$Girth)
boxplot(arv$Height)
boxplot(arv$Volume)
par(mfrow=c(1,1))

par(mfrow=c(1,3))
hist(arv$Girth)
hist(arv$Height)
hist(arv$Volume)
par(mfrow=c(1,1))

bp <- boxplot(arv$Girth, plot=FALSE)
bp
outliers <- bp$out
which(arv$Girth %in% outliers) #sem outliers

bp2 <- boxplot(arv$Height, plot=FALSE)
bp2
outliers2 <- bp2$out
which(arv$Height %in% outliers2) #sem tbm

bp3 <- boxplot(arv$Volume, plot=FALSE)
bp3
outliers3 <- bp3$out
which(arv$Volume %in% outliers3) #sem tbm

#unico valor outlier é em volume



