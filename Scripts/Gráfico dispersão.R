setwd ("C:/Users/Win10/Desktop")
df <- read.csv("video_game_films.csv", header=TRUE, encoding="UTF-8")
library(tidyverse)
library(ggplot2)
setwd ("C:/Users/Win10/Desktop/Projetos")

df %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic))+ 
  geom_point()

df%>%
  filter(df$Rotten.Tomatoes > 2) %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic))+ 
  geom_point()+
  geom_smooth(method = "lm")
