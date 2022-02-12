#script da analise de caixas em uma esteira por minuto

#numero medio de caixas medido
media_caixas = 23

#numero de caixas que e provavel se encontrar em dado tempo
quantidade_caixas = 30

#probabilidade de se encontrar o numero de caixas acima
ppois(quantidade_caixas,media_caixas)

#------
#gráfico de probabilidades
x = seq(0,40)
y = ppois(x,media_caixas)

plot(x,y, type = "l", lwd=4, col="darkblue")

x = seq(0,quantidade_caixas)
y = ppois(x,media_caixas)
polygon(c(0,x,quantidade_caixas),c(0,y,0),col="gray")

#------

#chance de se encontrar um numero maior de caixas
ppois(quantidade_caixas,media_caixas, lower = FALSE)
