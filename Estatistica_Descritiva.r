setwd("C:\\Users\\Usuário\\Desktop\\UTFPR 2023.1\\Probabilidade e estatística") 

dados <- read.csv("corn.csv",sep=";",dec=",")
#######################################################################
# Media
#######################################################################

mean(dados$Perda)
tapply(dados$Perda,dados$Dieta,mean)

#######################################################################
# Mediana
#######################################################################

median(dados$Perda)
tapply(dados$Perda,dados$Dieta,median)

#######################################################################
# Boxplot
#######################################################################

boxplot(dados$Perda,ylab="Proporção de Perda de Peso (%)")

boxplot(dados$Producao~dados$Metodo,ylab="Produção",xlab="Método",names=c("A","B","C","D"))

#######################################################################
# Diagrama de Colunas
#######################################################################

tabela <- table(dados$Hipertensao)

barplot(tabela,ylab="Frequência Absoluta",xlab="Hipertensão")

barplot(prop.table(tabela),ylab="Frequência Relativa",xlab="Hipertensão",col=c("green","red"))

# Grafico de barras Cruzados

f.absolutas <- table(dados$Dieta,dados$Hipertensao)
f.relativas <- prop.table(f.absolutas,1)

pdf("bar.pdf")
barplot(f.relativas,beside=T,col=c("blue","yellow"),xlab="Hipertensão",ylab="Frequência Relativa")
legend("topleft",fill=c("blue","yellow"),legend=c("Dieta A","Dieta B"),bty="n")
graphics.off()
