setwd ("C:/Users/Win10/Downloads")
df <- read.csv("testedata.csv")

library(tidyverse)
library(ggplot2)
df %>%
  group_by(Casos,lojas) %>%
  summarise(
    contagem= n ()
  ) %>%
ggplot(aes(x = Casos, y = lojas)) +
  geom_bar(stat = "identity",fill = "blue", alpha = 0.4) +
coord_flip()
