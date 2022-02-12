library(readr)

tabela_t <- read.csv2("exercicio_teste_t.csv")

head(tabela_t)

summary(tabela_t)

t.test(tabela_t$ANTES,tabela_t$DEPOIS, alternative = "greater")
