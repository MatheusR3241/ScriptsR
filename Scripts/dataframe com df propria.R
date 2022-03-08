setwd ("C:/Users/Win10/Desktop")
df <- read.csv("video_game_films.csv", header=TRUE, encoding="UTF-8")
library(tidyverse)
library(ggplot2)
nomes <- c("joao","maria","lucas","marcelo")
idades <- c(12,12,12,12)
df <- data.frame(nomes,idades)
df %>%
  group_by(nomes,idades) %>%
  summarise(
    contagem = n()
  ) %>%
  ggplot(aes(x = nomes , y = idades)) +
  geom_col(stat = "identity",fill = "blue", alpha = 0.4) + coord_flip()
view(df)

