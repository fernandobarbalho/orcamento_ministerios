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
