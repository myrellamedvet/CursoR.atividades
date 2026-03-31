setwd("[Documents\PrimeiroScript]")


x <- 2 * 4
print (x)
x<-5
print(x)
x<-10
print(x)
x<-4500
print(x)
PI <- 3.14159
E <- 2.71828
print(PI)
print(E)
x <- 50
y <- 17
print(x + y)
print(x - y)
print(x * y)
print(x / y)
print(x %% y)
print(x ^ y)
print(x == y)
print(x != y)
print(x > y)
print(x < y)
print(x >= y)
print(x <= y)
print(x & y)
print(x | y)
print(!y)
# Atribuindo um conjunto de dado a uma variável chamada 'z'
z <- c(12,3,5,9)
x %in% z
y %in% z

# ===============================
# 1. CRIANDO OS DADOS DOS PROGRAMAS
# ===============================

# Programa 1
programa1 <- list(
  nome = "Saúde da Mulher",
  objetivo = "Reduzir mortalidade materna",
  publico = "Mulheres em idade fértil",
  orcamento = 500000,
  inicio = as.Date("2024-01-01"),
  fim = as.Date("2026-12-31")
)

# Programa 2
programa2 <- list(
  nome = "Controle de Diabetes",
  objetivo = "Diminuir complicações do diabetes",
  publico = "Adultos com diabetes",
  orcamento = 750000,
  inicio = as.Date("2023-06-01"),
  fim = as.Date("2025-05-31")
)

# Programa 3
programa3 <- list(
  nome = "Vacinação Infantil",
  objetivo = "Aumentar cobertura vacinal",
  publico = "Crianças de 0 a 5 anos",
  orcamento = 900000,
  inicio = as.Date("2025-01-01"),
  fim = as.Date("2027-12-31")
)

# Lista com todos os programas
programas <- list(programa1, programa2, programa3)


# ===============================
# 2. ORÇAMENTO TOTAL
# ===============================

orcamentos <- sapply(programas, function(p) p$orcamento)
orcamento_total <- sum(orcamentos)

cat("Orçamento total:", orcamento_total, "\n")


# ===============================
# 3. PROGRAMA COM MAIOR ORÇAMENTO
# ===============================

indice_maior <- which.max(orcamentos)
programa_maior <- programas[[indice_maior]]

cat("Programa com maior orçamento:", programa_maior$nome, "\n")


# ===============================
# 4. PROGRAMAS EM ANDAMENTO
# ===============================

data_atual <- Sys.Date()

programas_andamento <- Filter(function(p) {
  p$inicio <= data_atual & p$fim >= data_atual
}, programas)

cat("Programas em andamento:\n")
for (p in programas_andamento) {
  cat("-", p$nome, "\n")
}


# ===============================
# 5. DESAFIO: INÍCIO MAIS RECENTE
# ===============================

datas_inicio <- sapply(programas, function(p) p$inicio)
indice_recente <- which.max(datas_inicio)

programa_recente <- programas[[indice_recente]]

cat("Programa com início mais recente:", programa_recente$nome, "\n")

# ===============================
# 1. DADOS
# ===============================

notas <- c(8.5, 7.0, 9.2, 6.8, 8.0, 7.5, 9.0, 5.5, 8.8, 7.2)


# ===============================
# 2. ORGANIZAÇÃO
# ===============================

# Ordem crescente
notas_crescente <- sort(notas)
notas_crescente

# Ordem decrescente
notas_decrescente <- rev(notas_crescente)
notas_decrescente


# ===============================
# 3. ESTATÍSTICAS DESCRITIVAS
# ===============================

# Média
media <- mean(notas)
media

# Mediana
mediana <- median(notas)
mediana

# Maior e menor nota
maior <- max(notas)
menor <- min(notas)

maior
menor

# Desvio padrão
desvio_padrao <- sd(notas)
desvio_padrao


# ===============================
# 4. FREQUÊNCIA
# ===============================

tabela_frequencia <- table(notas)
tabela_frequencia


# ===============================
# 5. RESUMO COMPLETO
# ===============================

summary(notas)


# ===============================
# 6. DESAFIO EXTRA
# ===============================

# Arredondar para 1 casa decimal
notas_arredondadas <- round(notas, 1)
notas_arredondadas

# Média das notas arredondadas
media_arredondada <- mean(notas_arredondadas)
media_arredondada

# Comparação
cat("Média original:", media, "\n")
cat("Média arredondada:", media_arredondada, "\n")


# ===============================
# 1. CARREGAR OS DADOS
# ===============================

data(mtcars)


# ===============================
# 2. EXPLORAR A ESTRUTURA
# ===============================

str(mtcars)

# Número de linhas e colunas
dim(mtcars)       # (linhas, colunas)
nrow(mtcars)      # linhas
ncol(mtcars)      # colunas


# ===============================
# 3. RESUMO DOS DADOS
# ===============================

summary(mtcars)

# Verificar tipos de variáveis
sapply(mtcars, class)


# ===============================
# 4. ESTATÍSTICAS DESCRITIVAS (mpg)
# ===============================

media_mpg <- mean(mtcars$mpg)
mediana_mpg <- median(mtcars$mpg)
desvio_mpg <- sd(mtcars$mpg)
min_mpg <- min(mtcars$mpg)
max_mpg <- max(mtcars$mpg)

media_mpg
mediana_mpg
desvio_mpg
min_mpg
max_mpg


# ===============================
# 5. ORDENAÇÃO (hp)
# ===============================

hp_crescente <- sort(mtcars$hp)
hp_decrescente <- rev(hp_crescente)

hp_crescente
hp_decrescente


# ===============================
# 6. SEQUÊNCIAS NUMÉRICAS
# ===============================

seq1 <- seq(1, 10, by = 2)
seq2 <- seq(5, 15, by = 3)

seq1
seq2


# ===============================
# 7. REPETIÇÃO DE ELEMENTOS
# ===============================

rep1 <- rep(7, times = 4)
rep2 <- rep("a", times = 10)

rep1
rep2


# ===============================
# 8. MAIÚSCULAS E MINÚSCULAS
# ===============================

# Convertendo cyl para texto
cyl_texto <- as.character(mtcars$cyl)

# Maiúsculas
cyl_maiusculo <- toupper(cyl_texto)

# Minúsculas
cyl_minusculo <- tolower(cyl_texto)

cyl_maiusculo
cyl_minusculo


#Instala e configura o remotes
install.packages('remotes')
library(remotes)

#Instala os pacotes de leitura de arquivo e ciência de dados
remotes::install_github("rfsaldanha/microdatasus")
install.packages('tidyverse')
install.packages('readr')

#Chama as bibliotecas
library(microdatasus)
library(tidyverse)
library(readr)

#Configura as pastas de trabalho
getwd()
setwd('[caminho da pasta de trabalho onde desejamos trabalhar]')

#Baixa os arquivos com os dados
#dados das estações
url <- "https://github.com/bmclima/cursoRBasico/blob/main/docs/dados/stations.csv"
estacoes <- read_csv(url)
#dados do SIM
sim <- fetch_datasus(year_start = 2010,
                     year_end = 2010,
                     uf = "DF",
                     information_system = "SIM-DO")

#Função do pacote microdatasus para pré-processar os dados coletados
sim_df <- process_sim(sim)

#Lê o cabeçalho dos bancos de dados
head(estacoes)
head(sim)

#Sumariza o conjunto de dados
summary(estacoes)
summary(sim_df)

#Verifica a estrutura dos dados
str(estacoes)
str(sim_df)

# Entrada de dados
# Solicitar o nome do usuário
nome <- readline(prompt = "Myrella: ")
cat("Olá,", nome, "!\n")

# Ler dados de um arquivo CSV
dados <- read.csv("temperatura_df.csv")

# Manipulação de diretórios
# Definir o diretório de trabalho
setwd("C:/dir_projeto")

# Listar os arquivos no diretório
arquivos <- list.files()
print(arquivos)

# Criar um novo arquivo
file.create("meus_scripts.R")

# Saída de dados
# Exibir os primeiros 6 registros dos dados
print(head(dados))

# Salvar os dados em um novo arquivo CSV
write.csv(dados, "temperatura_df_processado.csv", row.names = FALSE)

# Gerar um gráfico simples
plot(dados$temperatura, main = "Temperatura no DF")


# Criar um dataframe para armazenar as taxas de mortalidade
taxas_mortalidade <- data.frame(
  faixa_etaria = c("0-19 anos", "20-39 anos", "40-59 anos", "60 anos ou mais"),
  obitos = c(0, 0, 0, 0),
  populacao = c(1000000, 1000000, 1000000, 1000000),
  taxa_mortalidade = c(0, 0, 0, 0)
)

# Calcular a taxa de mortalidade por faixa etária
for (i in 1:nrow(df_sim)) {
  idade <- df_sim$IDADE[i]
  
  if (idade >= 0 && idade <= 19) {
    taxas_mortalidade$obitos[1] <- taxas_mortalidade$obitos[1] + 1
  } else if (idade >= 20 && idade <= 39) {
    taxas_mortalidade$obitos[2] <- taxas_mortalidade$obitos[2] + 1
  } else if (idade >= 40 && idade <= 59) {
    taxas_mortalidade$obitos[3] <- taxas_mortalidade$obitos[3] + 1
  } else {
    taxas_mortalidade$obitos[4] <- taxas_mortalidade$obitos[4] + 1
  }
}

# Calcular a taxa de mortalidade por 100.000 habitantes
taxas_mortalidade$taxa_mortalidade <- (taxas_mortalidade$obitos / taxas_mortalidade$populacao) * 100000

# Exibir os resultados
print(taxas_mortalidade)



# ===============================
# 1. CARREGAR PACOTES
# ===============================

library(tidyverse)
library(microdatasus)


# ===============================
# 2. IMPORTAR DADOS DO SINASC
# ===============================
# Exemplo: DF (Distrito Federal), ano 2022

dados <- fetch_datasus(year_start = 2022, year_end = 2022,
                       uf = "DF", information_system = "SINASC") %>%
  
  # Converter para formato utilizável
  process_sinasc() %>%
  
  # ===============================
# 3. FILTRAR E CALCULAR MÉDIA MENSAL
# ===============================

# Filtrar UF (reforçando) e remover dados sem mês
filter(UF == "DF", !is.na(MESNASC)) %>%
  
  # Agrupar por mês
  group_by(MESNASC) %>%
  
  # Contar nascimentos por mês
  summarise(nascimentos = n()) %>%
  
  # Calcular média mensal
  summarise(media_mensal = mean(nascimentos))


# Visualizar resultado
dados


# ===============================
# 1. DEFINIR DIRETÓRIO (opcional)
# ===============================
# setwd("C:/seu_diretorio")


# ===============================
# 2. CRIAR O ARQUIVO CSV
# ===============================

file.create("pacientes.csv")


# ===============================
# 3. CRIAR OS DADOS
# ===============================

nome_completo <- c(
  "João da Silva",
  "Maria Souza Santos",
  "Pedro Henrique Alves",
  "Ana Clara Oliveira"
)

data_do_atendimento <- c(
  "2024-07-12",
  "2024-07-12",
  "2024-07-12",
  "2024-07-11"
)

# Criar dataframe
pacientes <- data.frame(nome_completo, data_do_atendimento)


# ===============================
# 4. SALVAR NO CSV
# ===============================

write.csv(pacientes, "pacientes.csv", row.names = FALSE)


# ===============================
# 5. LER O ARQUIVO
# ===============================

dados <- read.csv("pacientes.csv", stringsAsFactors = FALSE)


# ===============================
# 6. MANIPULAÇÃO DE STRINGS
# ===============================

# Separar nomes em listas
nomes_split <- strsplit(dados$nome_completo, " ")

# Primeiro nome
dados$primeiro_nome <- sapply(nomes_split, function(x) x[1])

# Último nome
dados$ultimo_nome <- sapply(nomes_split, function(x) x[length(x)])


# ===============================
# 7. SALVAR NOVO CSV
# ===============================

write.csv(dados, "nomes_pacientes.csv", row.names = FALSE)


# Visualizar resultado
dados




# Criar um dataframe para armazenar as taxas de mortalidade
taxas_mortalidade <- data.frame(
  faixa_etaria = c("0-19 anos", "20-39 anos", "40-59 anos", "60 anos ou mais"),
  obitos = c(0, 0, 0, 0),
  populacao = c(1000000, 1000000, 1000000, 1000000),
  taxa_mortalidade = c(0, 0, 0, 0)
)

# Calcular a taxa de mortalidade por faixa etária
for (i in 1:nrow(df_sim)) {
  idade <- df_sim$IDADE[i]
  
  if (idade >= 0 && idade <= 19) {
    taxas_mortalidade$obitos[1] <- taxas_mortalidade$obitos[1] + 1
  } else if (idade >= 20 && idade <= 39) {
    taxas_mortalidade$obitos[2] <- taxas_mortalidade$obitos[2] + 1
  } else if (idade >= 40 && idade <= 59) {
    taxas_mortalidade$obitos[3] <- taxas_mortalidade$obitos[3] + 1
  } else {
    taxas_mortalidade$obitos[4] <- taxas_mortalidade$obitos[4] + 1
  }
}

# Calcular a taxa de mortalidade por 100.000 habitantes
taxas_mortalidade$taxa_mortalidade <- (taxas_mortalidade$obitos / taxas_mortalidade$populacao) * 100000

# Exibir os resultados
print(taxas_mortalidade)



setwd("[PrimeiroScript]")
# Instala e carrega os pacotes necessários
install.packages('remotes')
library(remotes)
remotes::install_github("rfsaldanha/microdatasus")
install.packages(c('tidyverse', 'readr'))
library(microdatasus)
library(tidyverse)
library(readr)

# Define o diretório de trabalho (substitua pelo caminho correto)
setwd('[caminho da pasta de trabalho]')

# Baixa os dados do SIM (substitua 'DF' pelo estado desejado)
sim <- fetch_datasus(year_start = 2010, year_end = 2010, uf = "DF", information_system = "SIM-DO")

# Pré-processa os dados do SIM
sim_df <- process_sim(sim)

# Cria um dataframe para armazenar as taxas de mortalidade (opcional)
taxas_mortalidade <- data.frame(
  faixa_etaria = c("0-19 anos", "20-39 anos", "40-59 anos", "60 anos ou mais"),
  obitos = c(0, 0, 0, 0),
  populacao = c(1000000, 1000000, 1000000, 1000000),  # Substitua pelos valores reais
  taxa_mortalidade = c(0, 0, 0, 0)
)

# Calcula a taxa de mortalidade por faixa etária (opcional)
for (i in 1:nrow(sim_df)) {
  idade <- sim_df$IDADE[i]
  
  if (idade >= 0 && idade <= 19) {
    taxas_mortalidade$obitos[1] <- taxas_mortalidade$obitos[1] + 1
  } else if (idade >= 20 && idade <= 39) {
    taxas_mortalidade$obitos[2] <- taxas_mortalidade$obitos[2] + 1
  } else if (idade >= 40 && idade <= 59) {
    taxas_mortalidade$obitos[3] <- taxas_mortalidade$obitos[3] + 1
  } else {
    taxas_mortalidade$obitos[4] <- taxas_mortalidade$obitos[4] + 1
  }
}

# Calcula a taxa de mortalidade por 100.000 habitantes (opcional)
taxas_mortalidade$taxa_mortalidade <- (taxas_mortalidade$obitos / taxas_mortalidade$populacao) * 100000

# Exibe um resumo dos dados (opcional)
summary(sim_df)

# Exibe a estrutura dos dados (opcional)
str(sim_df)

# Exibe os resultados das taxas de mortalidade (opcional)
print(taxas_mortalidade)

# Salva o dataframe processado em um arquivo CSV
write.csv(sim_df, "sim_processado.csv", row.names = FALSE)

# Salva o dataframe de taxas de mortalidade em um arquivo CSV (opcional)
write.csv(taxas_mortalidade, "taxas_mortalidade.csv", row.names = FALSE)



# ==========================================
# PROJETO FINAL - TAXA DE NASCIDOS VIVOS (TO - 2019)
# ==========================================

# ==========================================
# 1. COLETA DE DADOS (INGESTÃO)
# ==========================================

library(microdatasus)
library(tidyverse)

# SINASC - nascidos vivos
sinasc_bruto <- fetch_datasus(
  year_start = 2019,
  year_end = 2019,
  uf = "TO",
  information_system = "SINASC"
)

# SIM - óbitos (para estimativa populacional ou análise complementar)
sim_bruto <- fetch_datasus(
  year_start = 2019,
  year_end = 2019,
  uf = "TO",
  information_system = "SIM"
)


# ==========================================
# 2. PROCESSAMENTO DOS DADOS
# ==========================================

sinasc <- process_sinasc(sinasc_bruto)
sim <- process_sim(sim_bruto)


# ==========================================
# 3. LIMPEZA E TRANSFORMAÇÃO
# ==========================================

# Remover registros sem município ou data
sinasc_limpo <- sinasc %>%
  filter(!is.na(CODMUNNASC), !is.na(DTNASC))

# Total de nascidos vivos
total_nascidos <- nrow(sinasc_limpo)

# (Opcional) usar população estimada (exemplo fictício)
populacao_to_2019 <- 1572866


# ==========================================
# 4. ANÁLISE (CÁLCULO DA TAXA)
# ==========================================

# Taxa de nascidos vivos (por 1.000 habitantes)
taxa_natalidade <- (total_nascidos / populacao_to_2019) * 1000


# ==========================================
# 5. COMUNICAÇÃO DOS RESULTADOS
# ==========================================

cat("Estado: Tocantins (TO)\n")
cat("Ano: 2019\n")
cat("Total de nascidos vivos:", total_nascidos, "\n")
cat("População estimada:", populacao_to_2019, "\n")
cat("Taxa de natalidade (por 1.000 hab):", round(taxa_natalidade, 2), "\n")


# ==========================================
# EXTRA: VISUALIZAÇÃO (OPCIONAL)
# ==========================================

# Nascimentos por mês
sinasc_limpo %>%
  mutate(mes = format(DTNASC, "%m")) %>%
  count(mes) %>%
  ggplot(aes(x = mes, y = n)) +
  geom_col() +
  labs(
    title = "Nascidos vivos por mês - TO (2019)",
    x = "Mês",
    y = "Quantidade"
  )




# ==========================================
# PROJETO FINAL - TAXA DE NASCIDOS VIVOS (TO - 2019)
# ==========================================

# ==========================================
# 1. COLETA DE DADOS (INGESTÃO)
# ==========================================

library(microdatasus)
library(tidyverse)

# Baixar dados do SINASC (nascidos vivos)
dados <- fetch_datasus(
  year_start = 2019,
  year_end = 2019,
  uf = "TO",
  information_system = "SINASC"
) %>%
  
  # ==========================================
# 2. PROCESSAMENTO
# ==========================================

process_sinasc() %>%
  
  # ==========================================
# 3. LIMPEZA E TRANSFORMAÇÃO
# ==========================================

filter(!is.na(CODMUNNASC), !is.na(DTNASC))


# ==========================================
# 4. ANÁLISE
# ==========================================

# Total de nascidos vivos
total_nascidos <- nrow(dados)

# População estimada do TO em 2019 (aproximada - IBGE)
populacao_to_2019 <- 1572866

# Taxa de natalidade (por 1.000 habitantes)
taxa_natalidade <- (total_nascidos / populacao_to_2019) * 1000


# ==========================================
# 5. COMUNICAÇÃO DOS RESULTADOS
# ==========================================

cat("====================================\n")
cat("Taxa de Nascidos Vivos - TO (2019)\n")
cat("====================================\n")
cat("Total de nascidos vivos:", total_nascidos, "\n")
cat("População estimada:", populacao_to_2019, "\n")
cat("Taxa por 1.000 habitantes:", round(taxa_natalidade, 2), "\n")


# ==========================================
# EXTRA: VISUALIZAÇÃO (OPCIONAL)
# ==========================================

dados %>%
  mutate(
    DTNASC = as.Date(DTNASC, format = "%Y%m%d"),
    mes = format(DTNASC, "%m")
  ) %>%
  count(mes) %>%
  ggplot(aes(x = mes, y = n)) +
  geom_col() +
  labs(
    title = "Nascidos vivos por mês - TO (2019)",
    x = "Mês",
    y = "Quantidade"
  )



