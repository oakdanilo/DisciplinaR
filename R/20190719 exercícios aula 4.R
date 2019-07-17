################ EXERCÍCIOS AULA 04 ############################
#exercícios 2
poa<-read.csv("./data/exercicio_02.csv", sep =  ",")
str(poa)
head(poa)
poa2<-poa[poa$var=="quebec",] #indexei pela coluna de variedade para coiaas só iguais (==) a quebec
poa3<-poa2[poa2$temp=="chilled",] #indexei só aos chilled

#OU poa3<-poa[poa$temp=="chilled" & poa$var=="quebec",]
#OU poa3<- subset(poa$uptake, subset poa$var="chilled" & poa$var=="quebec",)
md<-mean(poa3$uptake)
md

####################
#exercício 3

library(vegan)
data(BCI)
dim(BCI)
colSums(t(BCI)) #soma das colunas o dataframe transposto

#OU
aplly(BCI, 1, sum) #aplicar a soma das linhas (coluna 1) do df BCI

####################
#exercício 4
dados<-read.delim("./Data/0012594-190621201848488.csv", sep="\t", quote="\", dec=".", fill=TRUE, comment.char="")
gbif4<-dados[,c(10,17,18)]
