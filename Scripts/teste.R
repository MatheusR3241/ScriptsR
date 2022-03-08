setwd ("C:/Users/Win10/Desktop")
df <- read.csv("fipe_Jun2018.csv", header=TRUE, encoding="UTF-8")
df$X <- NULL
df$price_reference <- NULL
library(dplyr)
library(tidyverse)
names(df) <- c("marca", "Carro", "ANO", "Combustível", "Preço")
summary(df$ANO)
str(df$Preço)
str(df)

df$Preço1 <- as.numeric(df$Preço)
summary(df$Preço1)
 df$Preço1 <- as.numeric(gsub("R\\$|\\.| ","",df$Preço))
 

df %>% filter(ANO == "2000") %>%
group_by(marca) %>%
  summarise(mean(Preço))

  
df
