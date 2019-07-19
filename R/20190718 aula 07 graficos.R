sal<-read.csv("https://raw.githubusercontent.com/AndreaSanchezTapia/analise_de_dados_ENBT_2019/master/aula07/data/salarios.csv")
head(sal)
mh <- lm(salario ~ experiencia, data=sal[sal$sexo=="H",])
mm <- lm(salario ~ experiencia, data=sal[sal$sexo=="M",])
coefh <- coef(mh)
coefm <- coef(mm)
# definindo os limites dos eixos
limy <- c(min(sal$salario),max(sal$salario))
limx <- c(min(sal$experiencia),max(sal$experiencia))
## definindo os nomes dos eixos
labx <- "Experiência (anos)"
laby <- "Salário (R$)"

par(mfrow=c(1,2), las=1, bty="l") # aqui estamos usando las e bty dentro do par para fixar para todas as janelas
# plot dos valores de salario dos homens
plot(salario ~ experiencia, data=sal[sal$sexo=="H",],
     col="darkgreen",
     ylim=limy, xlim=limx,
     ylab=laby, xlab=labx)
# linha do previsto pelo modelo
## a + b*x
abline(a=coefh[1], b=coefh[2],
       col='pink', lwd=2)
mtext("A", 3, adj=0, font=2)
## plot do salario das mulheres
plot(salario ~ experiencia, data=sal[sal$sexo=="M",],
     col="navy",
     ylim=limy, xlim=limx,
     ylab="", xlab=labx)
mtext("B", 3, adj=0, font=2)
# linha do previsto pelo modelo
## a + b*x
abline(a=coefm[1], b=coefm[2],
       col='navy', lwd=3)

install.packages("png", dependencies=TRUE)
library(png)
png("figs/fig01.png", res=300, width=2400, height=1200) #definindo um dispositivo gráfico numa pasta

par(mfrow=c(1,2), las=1, bty="l") #setando o layout de leitura do graph
plot(salario ~ experiencia, data=sal[sal$sexo=="H",], #plotando
     col="tomato",
     ylim=limy, xlim=limx,
     ylab=laby, xlab=labx)

abline(a=coefh[1], b=coefh[2], #plotando args secundários
       col='tomato', lwd=2)
mtext("A", 3, adj=0, font=2)

plot(salario ~ experiencia, data=sal[sal$sexo=="M",],
     col="navy",
     ylim=limy, xlim=limx,
     ylab="", xlab=labx)
mtext("B", 3, adj=0, font=2)

abline(a=coefm[1], b=coefm[2],
       col='navy', lwd=2)
dev.off() #gerar o arquivo na pasta

plot(salario ~ experiencia, data=sal[sal$sexo=="H",], #plotando
     col="orange",
     ylim=limy, xlim=limx,
     ylab=laby, xlab=labx)
abline(a=coefh[1], b=coefh[2],
       col='tomato', lwd=2)
points(salario ~ experiencia, data=sal[sal$sexo=="M",],
       col="navy")
legend("topleft", legend=c("homens", "mulheres"),  #usando legendas novas
       col=c("tomato", "navy"),
       lty=1, bty='n')


cores <- c("#3B9AB2", "#EBCC2A", "#F21A00")
# criando vetor com o nome das espécies
sp <- paste("I.", unique(iris$Species), sep=" ")
par(mfrow=c(2,2), bty='l', las=1)
boxplot(Sepal.Length ~ Species, data=iris, xlab="", col=cores,
        xaxt="n")
axis(1, at=1:3, labels=sp, font=3)
boxplot(Sepal.Width ~ Species, data=iris, xlab="", col=cores,
        xaxt="n")
axis(1, at=1:3, labels=sp, font=3)
boxplot(Petal.Length ~ Species, data=iris,  col=cores,
        xaxt="n")
axis(1, at=1:3, labels=sp, font=3)
boxplot(Petal.Width ~ Species, data=iris, col=cores,
        xaxt="n")
axis(1, at=1:3, labels=sp, font=3)
par(mfrow=c(1,1))

set.seed(42) #criando o mesmo grupo aleatório

d2 <- data.frame(name=letters[1:5], #criando o df relacionado ao seedset42
                 value=sample(seq(4,15),5),
                 sd=c(1,0.2,3,2,4))
plot(x=1:5, d2$value, las=1, bty='l', ylim=c(0, 18), pch=19, xaxt='n', #plotando
     xlab="names", ylab="value")
axis(1, at=1:5, labels=d2$name)
arrows(x0=1:5,
       y0=d2$value+d2$sd,
       y1=d2$value-d2$sd, angle=90, length=0.05, code=3)
set.seed(13)
sample(1:10,5)
RNGkind()

ap<-range(iris$Sepal.Width)
ap2<-range(iris$Petal.Length)
#exercícios
data(iris)
colnames(iris)

dev.off()


