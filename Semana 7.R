trees
datasets::trees
data("trees")
View(trees)

#Ver correlaciones plot pairs
pairs(trees)
#Resumen corelacional cor
cor(trees)

#Regresi�n 
#El comando b�sico es lm (linear models). El primer argumento de 
#este comando es una f�rmula y ~ x en la que se especifica cu�l
#es la variable respuesta o dependiente 
#y cu�l es la variable regresora o independiente (x). 

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















