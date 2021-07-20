trees
datasets::trees
data("trees")
View(trees)

#Ver correlaciones plot 
pairs(trees)
#Resumen corelacional 
cor(trees)

#Regresión 
#El comando básico es lm (linear models). El primer argumento de 
#este comando es una fórmula y ~ x en la que se especifica cuál
#es la variable respuesta o dependiente 
#y cuál es la variable regresora o independiente (x). 

#training
regresion = lm(Girth ~ Volume, trees)
summary(regresion)

plot(trees$Volume,trees$Girth)
abline(regresion)

#Test
volumenTest = data.frame(Volume=seq(60,65))

#Calculo predicciones 
 
data= predict(regresion,volumenTest)


plot(data)
