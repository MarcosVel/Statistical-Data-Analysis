#script para introdução do teorema de Bayes

#é o número total de testes que serão aplicados
#numero_de_testes <- 10000
numero_de_testes <- 100000

#é o conhecimento a priore: quantos são os resultados previamente com problema
#percentagem_problema  <- 0.20
percentagem_problema  <- 0.10

problemas_conhecidos <- percentagem_problema*numero_de_testes
 
#Erro tipo 1: A hipotese H0 é verdadeira e o teste rejeita H0 
significancia_tipo1 <- 0.05
  
#acuracia do teste: Se H0 é verdadeira, o teste não rejeita H0
acuracia_tipo1 <- 1 - significancia_tipo1

#Erro tipo 2: A hipotese H0 é falsa e o teste não rejeita H0
#significancia_tipo2 <- 0.05
significancia_tipo2 <- 0.15

#acuracia do teste: Se H0 é falsa, o teste rejeita H0
acuracia_tipo2 <- 1 - significancia_tipo2

#Calculo de Bayes---------

#probabilidade da pessoa ter covid dentre a populacao
P_A <- problemas_conhecidos/numero_de_testes; P_A

#probabilidade do teste dar positivo sabendo que ela tem COVID
P_B_A <- acuracia_tipo2; P_B_A

#probabilidade de B ocorrer sendo que A não ocorreu
P_B_nA <- significancia_tipo1; P_B_nA

#probabilidade de A não ocorrer
P_nA <- 1 - P_A; P_nA

#probabilidade de A ocorrer se B já tiver ocorrido
Probabilidade_A_se_B <- P_B_A*P_A/(P_B_A*P_A+P_B_nA*P_nA)

Probabilidade_A_se_B
