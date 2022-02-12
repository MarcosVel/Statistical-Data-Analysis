#tabela de saída

library(gt)
library(tidyverse)

#nome da sua tabela
tabela_probabilidade_bolas %>% 
  gt() %>%
  #cabeçalho da tabela
  tab_header(
    title = md("**Distribuição de probabilidades**")
  ) %>%
  #definindo o formato dos números
  fmt_number(
    columns = c(probabilidadeV, probabilidadeB),
    decimals = 3
  )

