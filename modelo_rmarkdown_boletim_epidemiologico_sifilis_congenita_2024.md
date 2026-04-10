---
title: "Boletim Epidemiológico – Sífilis Congênita 2024"
author: "[Seu nome / Instituição]"
date: "`r format(Sys.Date(), '%d/%m/%Y')`"
output:
  html_document:
    toc: true
    toc_depth: 3
    theme: readable
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)
```

# 1. Introdução

A sífilis congênita é um importante problema de saúde pública, sendo um indicador da qualidade da atenção pré-natal. Este boletim apresenta a análise epidemiológica dos casos notificados no ano de 2024.

# 2. Objetivos

## 2.1 Objetivo geral
Analisar o perfil epidemiológico da sífilis congênita no ano de 2024.

## 2.2 Objetivos específicos
- Descrever a distribuição temporal dos casos
- Analisar características maternas
- Avaliar indicadores de pré-natal
- Identificar desfechos dos casos

# 3. Metodologia

## 3.1 Tipo de estudo
Estudo descritivo, retrospectivo.

## 3.2 Fonte de dados
Sistema de Informação de Agravos de Notificação (SINAN).

## 3.3 Período de análise
Janeiro a dezembro de 2024.

## 3.4 Variáveis analisadas
- Idade materna
- Escolaridade
- Realização de pré-natal
- Tratamento materno
- Classificação final

# 4. Base de dados

```{r dados}
# Exemplo de leitura (ajuste conforme seu arquivo)
# dados <- read.csv("dados_sifilis.csv")

# Visualizar estrutura
# str(dados)
# head(dados)
```

# 5. Análise dos dados

## 5.1 Número total de casos

```{r total-casos}
# total_casos <- nrow(dados)
# total_casos
```

## 5.2 Distribuição por mês

```{r casos-mes}
# library(dplyr)
# library(ggplot2)

# dados %>%
#   count(mes_notificacao) %>%
#   ggplot(aes(x = mes_notificacao, y = n)) +
#   geom_col() +
#   labs(title = "Casos por mês", x = "Mês", y = "Número de casos")
```

## 5.3 Perfil materno

### Idade
```{r idade}
# summary(dados$idade_mae)
```

### Escolaridade
```{r escolaridade}
# table(dados$escolaridade)
```

## 5.4 Pré-natal

```{r pre-natal}
# table(dados$prenatal)
```

## 5.5 Tratamento materno

```{r tratamento}
# table(dados$tratamento)
```

## 5.6 Classificação final

```{r classificacao}
# table(dados$classificacao_final)
```

# 6. Indicadores epidemiológicos

## 6.1 Taxa de incidência

```{r incidencia}
# nascidos_vivos <- 0  # inserir valor
# incidencia <- (total_casos / nascidos_vivos) * 1000
# incidencia
```

# 7. Resultados

Descrever os principais achados da análise.

# 8. Discussão

Interpretar os resultados encontrados, comparando com literatura e dados anteriores.

# 9. Conclusão

Apresentar síntese dos achados e implicações para a saúde pública.

# 10. Recomendações

- Fortalecimento do pré-natal
- Testagem adequada
- Tratamento oportuno

# 11. Referências

- Ministério da Saúde
- Protocolos clínicos

# 12. Anexos (opcional)

```{r anexos}
# Tabelas adicionais
```

