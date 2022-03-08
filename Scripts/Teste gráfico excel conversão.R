setwd ("C:/Users/Win10/Desktop")
df <- read.csv("Pasta1.csv")

library(tidyverse)
library(ggplot2)
setwd ("C:/Users/Win10/Desktop/Projetos")
df$anos <- df$anos / 10


df %>%
  group_by(df$Meses,df$anos)%>%
  summarise(contagem = n()) %>%
  ggplot(aes(x = df$Meses , y = contagem))+ 
  geom_bar(stat = "identity")

df %>%
     group_by(Meses, anos) %>%
     summarise(
         contagem= n ()
       ) %>%
     ggplot(aes(x = Meses, y = anos)) +
     geom_bar(stat = "identity",fill = "blue", alpha = 0.4) 
df%>%
  filter(df$Rotten.Tomatoes > 2) %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic))+ 
  geom_point()+
  geom_smooth(method = "lm")+
  geom_smooth(method = "loess")+
geom_hline(yintercept = 80)

df%>%
  filter(df$Rotten.Tomatoes > 2) %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic, color = Distributor))+ 
  geom_point()+
  geom_smooth(method = "lm")+
coord_flip()
