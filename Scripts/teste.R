setwd ("C:/Users/Win10/Desktop")
df <- read.csv("fipe_Jun2018.csv", header=TRUE, encoding="UTF-8")
df$X <- NULL
df$price_reference <- NULL
library(dplyr)
library(tidyverse)
names(df) <- c("marca", "Carro", "ANO", "Combust�vel", "Pre�o")
summary(df$ANO)
str(df$Pre�o)
str(df)

df$Pre�o1 <- as.numeric(df$Pre�o)
summary(df$Pre�o1)
 df$Pre�o1 <- as.numeric(gsub("R\\$|\\.| ","",df$Pre�o))
 

df %>% filter(ANO == "2000") %>%
group_by(marca) %>%
  summarise(mean(Pre�o))

  
df
