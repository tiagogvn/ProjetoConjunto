library(readxl)
base = read_xlsx("Base Casos.xlsx")

library(ggplot2)
library(dplyr)
base %>% 
  ggplot(mapping = aes(y = Estatura)) +
  geom_boxplot(color = "black",
               fill = "yellow") +
  theme_classic()

base$HIV=as.factor(base$HIV)
ggplot(data=base,mapping=aes(x=HIV))+
  geom_bar()+
  geom_text(stat = "count", aes(label = after_stat(count)), vjust = -0.5, size=3) +
  xlab("Possui HIV?")+
  ylab("Frequência absoluta")+
  theme_bw()