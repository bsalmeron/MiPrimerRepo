#Paso 1
grasas <- read.table('http://verso.mat.uam.es/~joser.berrendero/datos/EdadPesoGrasas.txt', header = TRUE) 

names(grasas)
head(grasas)
tail(grasas)

#Paso 2 buscar la correlación visual 
pairs(grasas)

#Paso 3 Correlación exacta 
cor(grasas)

#Paso 4Entrenar al modelo 
Regresion = lm(grasas~edad, data = grasas )
summary(Regresion)

#Paso 5 generar regresión visual 
plot(grasas$edad, grasas$grasas, xlab = "Edad", ylab = "Grasas")
abline(Regresion)

#Paso 6 Prediccion (Test)
nuevas_edades = data.frame(edad= seq(10,30))

#Paso 7 ejecutar prediccion 

predict(Regresion,nuevas_edades)









functionMia = function(Num){
  paste("Hola"," ",+sqrt(Num))
  
}


COVID_19=COVID_19_Encuesta_a_estudiantes

COVID_19 = mutate(COVID_19, ColumnaNueva=functionMia(COVID_19$`Time spent on Online Class`))

view(COVID_19)

