dados_orcamento_2023%>%
  mutate(empenhado_dotacao = (empenhado/dotacao_atual)*100) %>%
  mutate(nome_curto = reorder(nome_curto, empenhado_dotacao)) %>%
  ggplot(aes(x= empenhado_dotacao, y= nome_curto)) +
  geom_col()


dados_orcamento_2023%>%
  mutate(pago_dotacao = (pago/dotacao_atual)*100) %>%
  mutate(nome_curto = reorder(nome_curto, pago_dotacao)) %>%
  ggplot(aes(x= pago_dotacao, y= nome_curto)) +
  geom_col()


dados_orcamento_2023%>%
  mutate(pago_empenhado = (pago/empenhado)*100) %>%
  mutate(nome_curto = reorder(nome_curto, pago_empenhado)) %>%
  ggplot(aes(x= pago_empenhado, y= nome_curto)) +
  geom_col()




dados_orcamento_2023%>%
  mutate(pago_empenhado = (pago/empenhado)*100)%>%
  mutate(categoria  = "Ministérios") %>%
  ggplot(aes(x=categoria, y=pago_empenhado)) +
  geom_boxplot(fill=NA, outlier.shape = NA) +
  geom_jitter() 

dados_orcamento_2018_2023 %>%
  mutate(pago_empenhado = (pago/empenhado)*100)%>%
  ggplot(aes(x=ano, y=pago_empenhado)) +
  geom_jitter() +  
  geom_boxplot(fill=NA,  outlier.shape = NA, color= "red") 

dados_orcamento_2018_2023 %>%
  filter(empenhado>0) %>%
  mutate(pago_empenhado = (pago/empenhado)*100)%>%
  summarise(mediana = median(pago_empenhado),
            .by= ano)



dados_orcamento_2018_2023 %>%
  mutate(pago_dotacao = (pago/dotacao_atual)*100)%>%
  summarise(mediana = median(pago_empenhado),
            .by= ano)

summary(fab)

fab<-
  dados_orcamento_2023%>%
  filter(dotacao >0 ) %>%
  mutate(pago_dotacao = (empenhado/dotacao_atual)*100) %>%
  
  

dados_orcamento_2023%>%
  mutate(pago_dotacao = (empenhado/dotacao_atual)*100) %>%
  summarise(mean(pago_dotacao),
            median(pago_dotacao))


dados_orcamento_2023%>%
  mutate(pago_dotacao = (pago/dotacao_atual)*100) %>%
  summarise(mean(pago_dotacao),
            median(pago_dotacao),
            min(pago_dotacao))


modelo<- lm(log(pago)~log(dotacao_atual), data = dados_orcamento_2023[-c(22),])

summary(modelo)

plot(modelo)

performance::check_model(modelo)



modelo<- lm(log(pago)~log(dotacao_atual), data = dados_orcamento_2023[,])



performance::check_model(modelo)
