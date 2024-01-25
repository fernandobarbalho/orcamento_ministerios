library(tidyverse)
library(readxl)
dados_orcamento_2023 <- read_delim("dados_orcamento_2023.csv", 
                                   delim = ";", escape_double = FALSE, locale = locale(decimal_mark = ",", 
                                                                                       grouping_mark = "."), trim_ws = TRUE)
dados_orcamento_2023 <- dados_orcamento_2023[-1,]

dados_orcamento_2023 <- janitor::clean_names(dados_orcamento_2023)



# Lista de ministérios com códigos
ministerios <- c("22000 - Ministério da Agricultura e Pecuária",
                 "24000 - Ministério da Ciência, Tecnologia e Inovação",
                 "25000 - Ministério da Fazenda",
                 "26000 - Ministério da Educação",
                 "28000 - Ministério do Desenvolvimento, Indústria, Comércio e Serviços",
                 "30000 - Ministério da Justiça e Segurança Pública",
                 "32000 - Ministério de Minas e Energia",
                 "33000 - Ministério da Previdência Social",
                 "35000 - Ministério das Relações Exteriores",
                 "36000 - Ministério da Saúde",
                 "39000 - Ministério dos Transportes",
                 "40000 - Ministério do Trabalho e Emprego",
                 "41000 - Ministério das Comunicações",
                 "42000 - Ministério da Cultura",
                 "44000 - Ministério do Meio Ambiente e Mudança do Clima",
                 "46000 - Ministério da Gestão e da Inovação em Serviços Públicos",
                 "47000 - Ministério do Planejamento e Orçamento",
                 "49000 - Ministério do Desenvolvimento Agrário e Agricultura Familiar",
                 "51000 - Ministério do Esporte",
                 "52000 - Ministério da Defesa",
                 "53000 - Ministério da Integração e do Desenvolvimento Regional",
                 "54000 - Ministério do Turismo",
                 "55000 - Ministério do Desenvolvimento e Assistência Social, Família e Combate à Fome",
                 "56000 - Ministério das Cidades",
                 "58000 - Ministério da Pesca e Aquicultura",
                 "65000 - Ministério das Mulheres",
                 "67000 - Ministério da Igualdade Racial",
                 "68000 - Ministério de Portos e Aeroportos",
                 "84000 - Ministério dos Povos Indígenas")

# Nomes sugeridos para os ministérios
nomes_sugeridos <- c("Agricultura e Pecuária",
                     "Ciência e Inovação",
                     "Fazenda",
                     "Educação",
                     "Desenvolvimento e Indústria",
                     "Justiça e Segurança",
                     "Minas e Energia",
                     "Previdência Social",
                     "Relações Exteriores",
                     "Saúde",
                     "Transportes",
                     "Trabalho e Emprego",
                     "Comunicações",
                     "Cultura",
                     "Meio Ambiente",
                     "Gestão e Inovação Pública",
                     "Planejamento e Orçamento",
                     "Desenvolvimento Agrário",
                     "Esporte",
                     "Defesa",
                     "Integração Regional",
                     "Turismo",
                     "Desenvolvimento Social",
                     "Cidades",
                     "Pesca e Aquicultura",
                     "Mulheres",
                     "Igualdade Racial",
                     "Portos e Aeroportos",
                     "Povos Indígenas")

# Função para substituir os nomes nos códigos dos ministérios
substituir_nomes <- function(codigos, nomes, ministerios) {
  for (i in seq_along(codigos)) {
    ministerios <- gsub(codigos[i], nomes[i], ministerios)
  }
  return(ministerios)
}

# Substituir os nomes nos ministérios
ministerios_substituidos <- substituir_nomes(codigos = ministerios, nomes = nomes_sugeridos, ministerios = ministerios)

# Exibir os ministérios com os nomes substituídos
print(ministerios_substituidos)


# Lista de ministérios com códigos
ministerios <- c("22000 - Ministério da Agricultura e Pecuária",
                 "24000 - Ministério da Ciência, Tecnologia e Inovação",
                 "25000 - Ministério da Fazenda",
                 "26000 - Ministério da Educação",
                 "28000 - Ministério do Desenvolvimento, Indústria, Comércio e Serviços",
                 "30000 - Ministério da Justiça e Segurança Pública",
                 "32000 - Ministério de Minas e Energia",
                 "33000 - Ministério da Previdência Social",
                 "35000 - Ministério das Relações Exteriores",
                 "36000 - Ministério da Saúde",
                 "39000 - Ministério dos Transportes",
                 "40000 - Ministério do Trabalho e Emprego",
                 "41000 - Ministério das Comunicações",
                 "42000 - Ministério da Cultura",
                 "44000 - Ministério do Meio Ambiente e Mudança do Clima",
                 "46000 - Ministério da Gestão e da Inovação em Serviços Públicos",
                 "47000 - Ministério do Planejamento e Orçamento",
                 "49000 - Ministério do Desenvolvimento Agrário e Agricultura Familiar",
                 "51000 - Ministério do Esporte",
                 "52000 - Ministério da Defesa",
                 "53000 - Ministério da Integração e do Desenvolvimento Regional",
                 "54000 - Ministério do Turismo",
                 "55000 - Ministério do Desenvolvimento e Assistência Social, Família e Combate à Fome",
                 "56000 - Ministério das Cidades",
                 "58000 - Ministério da Pesca e Aquicultura",
                 "65000 - Ministério das Mulheres",
                 "67000 - Ministério da Igualdade Racial",
                 "68000 - Ministério de Portos e Aeroportos",
                 "84000 - Ministério dos Povos Indígenas")

# Nomes sugeridos para os ministérios
nomes_sugeridos <- c("Agricultura e Pecuária",
                     "Ciência e Inovação",
                     "Fazenda",
                     "Educação",
                     "Desenvolvimento e Indústria",
                     "Justiça e Segurança",
                     "Minas e Energia",
                     "Previdência Social",
                     "Relações Exteriores",
                     "Saúde",
                     "Transportes",
                     "Trabalho e Emprego",
                     "Comunicações",
                     "Cultura",
                     "Meio Ambiente",
                     "Gestão e Inovação Pública",
                     "Planejamento e Orçamento",
                     "Desenvolvimento Agrário",
                     "Esporte",
                     "Defesa",
                     "Integração Regional",
                     "Turismo",
                     "Desenvolvimento Social",
                     "Cidades",
                     "Pesca e Aquicultura",
                     "Mulheres",
                     "Igualdade Racial",
                     "Portos e Aeroportos",
                     "Povos Indígenas")



dados_orcamento_2023$nome_curto<- nomes_sugeridos

dados_orcamento_2023%>%saveRDS("dados_orcamento_2023.rds")



#Dados de execução do cálculo do teto do gasto
#Origem dos dados: https://www.tesourotransparente.gov.br/ckan/dataset/8675a0a4-31c5-4593-a24d-fb8e17376eca/resource/44c1aa69-a1ef-4efd-8e77-8346f8883c38/download/tetonov23.xlsx

tetonov23 <- read_excel("tetonov23.xlsx", 
                        sheet = "2023")

tetonov23<- janitor::clean_names(tetonov23)

tetonov23 %>%
  select(orgao_descricao,
         unidade_orcamentaria_descricao,
         dotacao_inicial:restos_a_pagar_pagos) %>%
  pivot_longer(cols = dotacao_inicial:restos_a_pagar_pagos,
               names_to = "status",
               values_to = "valor") %>%
  summarise(valor_total = sum(valor),
            .by= c(orgao_descricao:status)) %>%
  ungroup() %>%
  pivot_wider( names_from = status, values_from =valor_total) %>%
  mutate(categoria = "UO") %>%
  mutate(pago_empenhado = (despesas_pagas/despesas_empenhadas)*100) %>%
  filter(between(pago_empenhado,0,100)) %>%
  ggplot(aes(x=categoria, y=pago_empenhado)) +
  geom_boxplot(fill=NA, outlier.shape = NA) +
  geom_jitter()  


tetonov23 %>%
  filter(poder == "EXE",
         str_detect(str_to_lower(orgao_descricao), "ministerio")) %>%
  select(orgao_descricao,
         unidade_orcamentaria_descricao,
         dotacao_inicial:restos_a_pagar_pagos) %>%
  pivot_longer(cols = dotacao_inicial:restos_a_pagar_pagos,
               names_to = "status",
               values_to = "valor") %>%
  summarise(valor_total = sum(valor),
            .by= c(orgao_descricao, status)) %>%
  ungroup() %>%
  pivot_wider( names_from = status, values_from =valor_total) %>%
  mutate(categoria = "ministerios") %>%
  mutate(pago_empenhado = (despesas_pagas/despesas_empenhadas)*100) %>%
  filter(between(pago_empenhado,0,100)) %>%
  ggplot(aes(x=categoria, y=pago_empenhado)) +
  geom_boxplot(fill=NA, outlier.shape = NA) +
  geom_jitter()  




tetonov23 %>%
  filter(poder == "EXE",
         str_detect(str_to_lower(orgao_descricao), "ministerio")) %>%
  select(orgao_descricao,
         unidade_orcamentaria_descricao,
         dotacao_inicial:restos_a_pagar_pagos) %>%
  pivot_longer(cols = dotacao_inicial:restos_a_pagar_pagos,
               names_to = "status",
               values_to = "valor") %>%
  summarise(valor_total = sum(valor),
            .by= c(orgao_descricao, status)) %>%
  ungroup() %>%
  pivot_wider( names_from = status, values_from =valor_total) %>%
  mutate(pago_empenhado = (despesas_pagas/despesas_empenhadas)*100) %>%
  filter(between(pago_empenhado,0,100)) %>%
  mutate(orgao_descricao = reorder(orgao_descricao, pago_empenhado)) %>%
  ggplot(aes(x=pago_empenhado, y= orgao_descricao)) +
  geom_col()




fab<-
  tetonov23 %>%
  select(orgao_descricao,
         unidade_orcamentaria_descricao,
         dotacao_inicial:restos_a_pagar_pagos) %>%
  pivot_longer(cols = dotacao_inicial:restos_a_pagar_pagos,
               names_to = "status",
               values_to = "valor") %>%
  summarise(valor_total = sum(valor),
            .by= c(orgao_descricao:status)) %>%
  ungroup() %>%
  pivot_wider( names_from = status, values_from =valor_total) %>%
  mutate(categoria = "UO") %>%
  mutate(pago_empenhado = (despesas_pagas/despesas_empenhadas)*100) %>%
  filter(!between(pago_empenhado,0,100))




########Trabalho com dados orçamentário de 2018 a 2023

df_de_para<-
  tibble(orgao_orcamentario= c("22000 - Ministério da Agricultura e Pecuária",
                               "24000 - Ministério da Ciência, Tecnologia e Inovação",
                               "25000 - Ministério da Fazenda",
                               "26000 - Ministério da Educação",
                               "28000 - Ministério do Desenvolvimento, Indústria, Comércio e Serviços",
                               "30000 - Ministério da Justiça e Segurança Pública",
                               "32000 - Ministério de Minas e Energia",
                               "33000 - Ministério da Previdência Social",
                               "35000 - Ministério das Relações Exteriores",
                               "36000 - Ministério da Saúde",
                               "39000 - Ministério dos Transportes",
                               "40000 - Ministério do Trabalho e Emprego",
                               "41000 - Ministério das Comunicações",
                               "42000 - Ministério da Cultura",
                               "44000 - Ministério do Meio Ambiente e Mudança do Clima",
                               "46000 - Ministério da Gestão e da Inovação em Serviços Públicos",
                               "47000 - Ministério do Planejamento e Orçamento",
                               "49000 - Ministério do Desenvolvimento Agrário e Agricultura Familiar",
                               "51000 - Ministério do Esporte",
                               "52000 - Ministério da Defesa",
                               "53000 - Ministério da Integração e do Desenvolvimento Regional",
                               "54000 - Ministério do Turismo",
                               "55000 - Ministério do Desenvolvimento e Assistência Social, Família e Combate à Fome",
                               "56000 - Ministério das Cidades",
                               "58000 - Ministério da Pesca e Aquicultura",
                               "65000 - Ministério das Mulheres",
                               "67000 - Ministério da Igualdade Racial",
                               "68000 - Ministério de Portos e Aeroportos",
                               "84000 - Ministério dos Povos Indígenas"),
         nome_curto = c("Agricultura e Pecuária",
                        "Ciência e Inovação",
                        "Fazenda",
                        "Educação",
                        "Desenvolvimento e Indústria",
                        "Justiça e Segurança",
                        "Minas e Energia",
                        "Previdência Social",
                        "Relações Exteriores",
                        "Saúde",
                        "Transportes",
                        "Trabalho e Emprego",
                        "Comunicações",
                        "Cultura",
                        "Meio Ambiente",
                        "Gestão e Inovação Pública",
                        "Planejamento e Orçamento",
                        "Desenvolvimento Agrário",
                        "Esporte",
                        "Defesa",
                        "Integração Regional",
                        "Turismo",
                        "Desenvolvimento Social",
                        "Cidades",
                        "Pesca e Aquicultura",
                        "Mulheres",
                        "Igualdade Racial",
                        "Portos e Aeroportos",
                        "Povos Indígenas") ) %>%
  saveRDS("df_de_para.RDS")



dados_orcamento_2018_2023 <- read_excel("dados_orcamento_2018_2023.xlsx")


dados_orcamento_2018_2023 <- janitor::clean_names(dados_orcamento_2018_2023)

dados_orcamento_2018_2023<- dados_orcamento_2018_2023[-1,]

dados_orcamento_2018_2023<- dados_orcamento_2018_2023[1:1411,]

dados_orcamento_2018_2023 %>%
  saveRDS("dados_orcamento_2018_2023.rds")


dados_orcamento_2018_2023  %>%
  filter(ano==2023,
         orgao_orcamentario == "28000 - Ministério do Desenvolvimento, Indústria, Comércio e Serviços" ) %>%
  mutate(pago_dotacao_atual = (pago/dotacao_atual)*100) %>%
  write_csv("uo_selecao.csv")

