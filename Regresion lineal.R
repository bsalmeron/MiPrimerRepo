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


