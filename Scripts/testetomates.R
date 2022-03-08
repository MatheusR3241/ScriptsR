setwd ("C:/Users/Win10/Desktop")
df <- read.csv("video_game_films.csv", header=TRUE, encoding="UTF-8")
library(tidyverse)
library(ggplot2)
df %>%
  group_by(Title,Rotten.Tomatoes) %>%
  summarise(
    contagem = n()
  ) %>%
  ggplot(aes(x = Title , y = Rotten.Tomatoes)) +
  geom_col(stat = "identity",fill = "blue", alpha = 0.4) + coord_flip()
view(df)
