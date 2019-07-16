ls() #lista de objetos ativos no workspace/environment
rm(list=ls()) #remover a lista do workspace
getwd()
demo() #roda as demonstrações de exemplos do pacote


#vetores:
#numeric, integer (inteiros), character (precisa de aspas), factor (conjunto de categorias), logical (TRUE/FALSE)

num<-c(1,2,3,4,5,6,7)
nomes<-c("Sara", "Andrea", "Diogo")
outros<-c("ENBT", 33, "UFRJ", 12)
num2<-1:7#intervalo
num3<-seq(1,7, by=1) #função seq
v1<-seq(1,10, by=1)
v2<-v1 < 4
v1[v1<5] #indexação
v1[2]<- 0 #modificar o segundo valor de v1
v1[v1<2]<-0; v1 # o ; quebra a linha, ai faz rodar os dois
lenght(v1) #comprimento do vetor
head(v1)
tail(v1)

#matrizes
m1<-matrix(1:9, nrow=3, ncol=3, byrow = TRUE) #criando matrizes, 3 l/c, usando o primeiro critério as linhas (row)

riq<-c(12,12,18,11,18)
abun<-c(40,50,67,37,22)
mat<-cbind(riq,abun) #concatenando pelas colunas
dim(mat) #número de linhas e colunas (sempre nessa ordem)
rownames(mat)<-c("P1","P2","P3","P4","P5") #adicionando nomes as linhas
mat

#dataframes
l3<-LETTERS[1:3]
fac<-sample(l3, 10, replace=TRUE)
df<-data.frame(x=1, y=1:10, fac=fac)
df

#importar .csv
tab<-read.csv("./data/exercicio_01.csv", sep =  ",")
str(tab)
head(tab)

#NÃO LER
#df2$comp <-gsub(",",".", df2$comp) substituindo as virgulas pelo .
#df2$comp<-as.numeric(df2$comp)

#write.csv(df, ./data/meusdados.csv")
