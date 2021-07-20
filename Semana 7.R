trees
datasets::trees
data("trees")
View(trees)

#Ver correlaciones plot pairs
pairs(trees)
#Resumen corelacional cor
cor(trees)

#Regresión 
#El comando básico es lm (linear models). El primer argumento de 
#este comando es una fórmula y ~ x en la que se especifica cuál
#es la variable respuesta o dependiente 
#y cuál es la variable regresora o independiente (x). 

#training lm(y ~ x, data)
regresion = lm(Girth ~ Volume, trees)
summary(regresion)

plot(trees$Volume,trees$Girth)
abline(regresion)

#Test
volumenTest = data.frame(Volume=seq(60,65))

#Calculo predicciones  predict(lm,data_test)
 
data= predict(regresion,volumenTest)


plot(data) 



#Funciones 

#1200 = (1200*1.13)

CalculoIvaCR = function(monto){
  monto*1.13
}


CalculoIvaCR(as.integer(VentasClientes$Monto))

dataTest = mutate(VentasClientes, IVA =CalculoIvaCR(as.integer(VentasClientes$Monto))
 )















