library(readr)

# Associacao do arquivo com a tabela4
tabela4 <- read_csv('tabela_4A.csv')

View(tabela4)
# criacao de uma coluna (vetor) com a media das velocidades dos intervalos
tabela4$media_velocidades <- c(19/2, (29+20)/2,(39+30)/2, (49+40)/2, (59+50)/2, (69+60)/2, (79+70)/2,(89+80)/2, (99+90)/2, (109+100)/2, (119+110)/2, (129+120)/2, (139+130)/2, (199+140)/2)

# contagem do numero de linhas da tabela na variavel nlinhas
nlinhas <- nrow(tabela4);nlinhas

# criacao da coluna que representa o  somatario da frequencia vezes a media das velocidades 
tabela4$SomavFreq <- 0

for(i in 1:nlinhas){tabela4$SomavFreq[i] <- sum(tabela4$'jan/17'[i]*tabela4$media_velocidades[i])}

# soma de todas as frequencias, representando o numero N
Njan17 = sum(tabela4$'jan/17')

# Calculo da media das frequencias
Media_Jan17 = sum(tabela4$SomavFreq)/Njan17;Media_Jan17

# Soma ao quadrado dos erros
tabela4$SS <- 0
for(i in 1:nlinhas){tabela4$SS[i] <- sum((tabela4$media_velocidades[i] - Media_Jan17)^2*tabela4$'jan/17'[i])}

# variancia
variancia <- sum(tabela4$SS)/(Njan17-1);variancia

# desvio padrao
desvio_padrao <- sqrt(variancia) ;desvio_padrao

#gráfico
faixas <- c("1-19","20-29","30-39","40-49","50-59","60-69","70-79","80-89","90-99","100-109","110-119","120-129","130-139","140-199")
barplot(tabela4$'jan/17', main = "Distribuicao de velocidades",xlab = "Faixa de Velocidades (km/h)",ylab="Frequencia",col="darkred",names.arg = faixas)

