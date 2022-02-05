library(readr)

faixas <- c("1-19","20-29","30-39","40-49","50-59","60-69","70-79","80-89","90-99","100-109","110-119","120-129","130-139","140-199")
barplot(tabela4$jan17, main = "Distribuicao de velocidades",xlab = "Faixa de Velocidades (km/h)",ylab="Frequencia",col="darkred",names.arg = faixas)
par(new = TRUE)
x <- seq(0,200, by = 1)
y <- dnorm(x, mean = 69.3093, sd = 6.4445)
plot(x,y, xlab = NA ,ylab= NA, type = 'p', axes = FALSE, col = 'darkgreen')
