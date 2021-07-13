#Regresión lineal simple 
#m+by

data("Orange")
View(Orange)
library(tidyverse)


ggplot(data = Orange, aes(x=age,y=circumference))+
  geom_point()+
  geom_abline(intercept = 17,3,
              slope = 0.10,
              col = 'blue') +
  geom_vline(xintercept = 800,
             col = 'red')

#Ajuste de regresión Calcular la circunferecia depediendo de la 
#edad lm(dependiete, pendiente, data)
Regresion =lm(circumference ~ age, data = Orange)#Entrenando
summary(Regresion)