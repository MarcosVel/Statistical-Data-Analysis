#bolas que serão retiradas
N = 5

#bolas vermelhas
p = 4/10
#bolas brancas
q = 6/10

#Número de combinações possíveis para 2 vermelhas
choose(N, 2)

#cria-se uma sequencia de numeros entre 0 e 10
x <- c(seq(0,N));x

#criacao do vetor de probabilidade
probabilidade <- 0

#criacao da tabela com as colunas X e probabilidade calculada                              
tabela_probabilidade_bolas <- data.frame(x,probabilidade)

#calculo da probabilidade de retirar uma bola vermelha
for(i in 0:N+1){tabela_probabilidade_bolas$probabilidade[i] <- dbinom(x[i],N,p)}
View(tabela_probabilidade_bolas)

#criacao do grafico das probabilidades
barplot(tabela_probabilidade_bolas$probabilidade, main = "Distribuicao de probabilidades",xlab = "Valores de x",ylab="Probabilidades", ylim = c(0,0.3), col='#69b3a2', names.arg = x)

#variancia
variancia = N * 4/10 * 6/10;
variancia

#desvio padrão
desvio_padrao <- sqrt(variancia);
desvio_padrao

par(new = TRUE)
x <- seq(0,5, by = 0.1)
y <- dnorm(x, mean = N * p, sd = desvio_padrao)
plot(x,y, xlab = NA ,ylab= NA, type = 'p', axes = FALSE, col = 'darkgreen')

