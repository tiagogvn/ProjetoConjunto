library(readxl)
base = read_xlsx("Base Casos.xlsx")

library(ggplot2)
library(dplyr)
base %>% 
  ggplot(mapping = aes(y = Estatura)) +
  geom_boxplot(color = "black",
               fill = "yellow") +
  theme_classic()
