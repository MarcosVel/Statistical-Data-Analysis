#script do exemplo da probabilidade de sair de onibus ou carro


#Numero de combinacoes possiveis entre 8 pessoas com 2 escolhas positivas
choose(8,2)

## Para fazer um grafico da distribicao de probabilidades

#cria-se uma sequencia de numeros entre 0 e 8
x <- c(seq(0,8));x

#probabilidade da pessoa sair de onibus
p = 0.5

#numero total de pessoas estudadas
N = 8

#criacao do vetor de probabilidade do onibus
probabilidade_onibus <- 0
                              
#criacao da tabela com as colunas X e probabilidade calculada                              
tabela_probabilidades <- data.frame(x,probabilidade_onibus)

#calculo da probabilidade de X pessoas sairem de onibus
for(i in 0:N+1){tabela_probabilidades$probabilidade_onibus[i] <- dbinom(x[i],N,p)}
View(tabela_probabilidades)

#criacao do grafico das probabilidades
barplot(tabela_probabilidades$probabilidade_onibus, main = "Distribuicao de probabilidades",xlab = "Valores de x",ylab="Probabilidades", ylim = c(0,0.3), col='#69b3a2', names.arg = x)

