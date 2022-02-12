library(readr)

tabela2 <- read_csv2("tabela_2.csv")

View(tabela2)

summary(tabela2)

# obter valores individuais
summary(tabela2$"Valores 1")


# valor da média
mean(x = tabela2$`Valores 1`)
# ou
mean(tabela2$`Valores 1`)


# média por linha
tabela2$media <- 0
View(tabela2)
# calcular média
for (i in 1:12) {tabela2$media[i] <- 
  sum(tabela2[i,c("Valores 1", "Valores 2", "Valores 3", "Valores 4")]) / 4}

# outra maneira
nlinhas <- nrow(tabela2)
# armazenar colunas em vetor
colunas <- c("Valores 1", "Valores 2", "Valores 3", "Valores 4")
#contamos qtd de colunas
ncolunas <- length(colunas)
tabela2$media2 <- 0
for (i in 1:nlinhas) { tabela2$media2[i] <- 
  sum(tabela2[i, colunas]) / ncolunas
}

# amostra de variância
var(tabela2$`Valores 1`)

# desvio padrao
sd(tabela2$`Valores 1`)
