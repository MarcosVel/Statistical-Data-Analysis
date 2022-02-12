library(readr)

#Associando o arquivo tabela 3 à variável tabela3
tabela3 <- read.csv("tabela_3.csv")

View(tabela3)

summary(tabela3)

#ver a média de velocidade de cada categoria
tapply(tabela3$Velocidade, tabela3$Tipo, mean)

#ver quantos carros estavam acima de 80km/h
infracao <- ifelse(tabela3$Velocidade > 80, "multa", "normal")
table(tabela3$Tipo,infracao)

#-----visualizar a quantidade de veículos em cada faixa de velocidade

#separando as faixas de velocidade (primeiro valor, maior valor, separar de x em x)
brk <- seq(10,100,10); brk

#criando as classes de velocidades (c é vetor)
classes <- c('10-19','20-29','30-39','40-49','50-59','60-69','70-79','80-89','90-100')


tab.frequencia <- table(cut(tabela3$Velocidade,breaks = brk,right = FALSE, labels = classes))
View(tab.frequencia)
barplot(tab.frequencia,xlab = "Faixa de Velocidades (km/h)", ylab="Frequencia", col = '#69b3a2')
