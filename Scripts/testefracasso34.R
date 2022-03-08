setwd ("C:/Users/Win10/Desktop")
df <- read.csv("video_game_films.csv", header=TRUE, encoding="UTF-8")
library(tidyverse)
library(ggplot2)
df %>%
  group_by(Title, Metacritic) %>%
  summarise(
    contagem = n()
  ) %>%
  ggplot(aes(x = Title, y = Metacritic, label = Metacritic)) +
  geom_bar(stat = "identity",fill = "blue", alpha = 0.4) + coord_flip()
df2 <-  df
df2$Release.date <- NULL
df2$Worldwide.box.office <- NULL
df2$Distributor<- NULL
df2$Rotten.Tomatoes <- NULL
df2$Original.game.publisher <- NULL

df2


d