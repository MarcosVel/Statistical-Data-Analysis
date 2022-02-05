library(readr)

tabela4 <- read_csv('tabela_4A.csv')
View(tabela4)

tabela4$media_velocidades <- c(19/2, (29+20)/2,(39+30)/2, (49+40)/2, (59+50)/2, (69+60)/2, (79+70)/2,(89+80)/2, (99+90)/2, (109+100)/2, (119+110)/2, (129+120)/2, (139+130)/2, (199+140)/2)

nlinhas <- nrow(tabela4);nlinhas

tabela4$SomavFreq <- 0

for(i in 1:nlinhas){tabela4$SomavFreq[i] <- sum(tabela4$'ago/17'[i]*tabela4$media_velocidades[i])}

Nago17 = sum(tabela4$'ago/17')

Media_Ago17 = sum(tabela4$SomavFreq)/Nago17;Media_Ago17

tabela4$SS <- 0
for(i in 1:nlinhas){tabela4$SS[i] <- sum((tabela4$media_velocidades[i] - Media_Ago17)^2*tabela4$'ago/17'[i])}

variancia <- sum(tabela4$SS)/(Nago17-1);variancia

desvio_padrao <- sqrt(variancia) ;desvio_padrao

faixas <- c("1-19","20-29","30-39","40-49","50-59","60-69","70-79","80-89","90-99","100-109","110-119","120-129","130-139","140-199")
barplot(tabela4$'ago/17', main = "Marcos Veloso - Agosto",xlab = "Faixa de Velocidades (km/h)",ylab="Frequencia",col="darkred",names.arg = faixas)

par(new = TRUE)
x <- seq(0,200, by = 1)
y <- dnorm(x, mean = Media_Ago17, sd = desvio_padrao)
plot(x,y, xlab = NA ,ylab= NA, type = 'p', axes = FALSE, col = 'darkgreen')
