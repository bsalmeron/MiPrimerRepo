#Práctica 1

#Realice un ejemplo de las estructuras if y for, 
#utilice la cantidad de datos diferentes de
#las que se utilizaron en clase. 
edad = 89
if (edad >=18) {
  print("Mayor de edad")
}else{
  print("Menor de edad")
}

#Declare un tipo de variable double,
#integer y caracter 
var1 = 2L
var2=4.8
var3="Caracter"

typeof()
class()

#Cree un vector de enteros 
vectorEnteros = c(2L,3L,4L,5L)

#Cree un vector con los meses del año  
vectorMeses = c("Enero","Febrero","Marzo","Abril")
#Cree un vector con nombre de personas  
vectorMeses = c("Ana","Juan","Gerardo","Abril")
#Cree los siguientes vectores  
vectorPelicula = c("Sherk","Sherk 2","Sherk tercero","Sherk Felices")
VectorPuntuacion=c(7.9,7.2,6.1,6.3)
VectorEstreno = c(TRUE,TRUE,FALSE,FALSE)

#Saque las siguientes funciones con base 
#algún vector numérico del ejercicio 6

length(VectorPuntuacion)
min(VectorPuntuacion)
max(VectorPuntuacion)
sum(VectorPuntuacion)
mean(VectorPuntuacion)
median(VectorPuntuacion)
sort(VectorPuntuacion)
plot(VectorPuntuacion)
unique(VectorPuntuacion)
which.max(VectorPuntuacion)
which.min(VectorPuntuacion)
sqrt(VectorPuntuacion)

#Genere un vector con valores del 1 al 100 

vectorSeq=c(1:100)

#Genere un vector con valores 
#del 1 al 100 de 10 en 10 
vectroSeqBy = seq(  0, 100,10)
#seq(de, hasta, por)
print(vectroSeqBy)
vectroSeqBy






#DATAFRAMES (TEMA NUEVO)

vectorPelicula

names(vectorPelicula) = c("Peli1","Peli2","Peli3","Peli4")

vectorPelicula

iris
trees
warpbreaks


#Convertir a dataframe
is.data.frame(iris)
iris = data.frame(iris)
class(iris)

iris
View(iris)


# Creamos vectores con los valores 

nombre = c("Juan", "Margarita", "Ruben", "Daniel") 

apellido = c("Sanchez", "Garcia", "Sancho", "Alfara") 

fecha_nacimiento = as.Date(c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19") )

sexo = c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE") 

nro_hijos = c(1, 2, 3, 4) 

#Creación con la función data.frame

censo = data.frame(nombre,apellido,fecha_nacimiento,sexo,nro_hijos)
class(censo)
View(censo)

#head()
head(censo)
#tail
tail(censo)
#str
str(censo)

#acceso a variables 
View(data.frame(censo$sexo))
censo$sexo=as.factor(censo$sexo)

quantile(iris$Sepal.Length)

ncol(censo)
names(censo)
View(censo[2:4])

#Ejemplo 1

#a

results=c("A","A", "B", "B", "B", "B", "B","I","I","I","R","I","I","I","R","R",
           "R","R","R","R","R","R","R","R","R", "M", "M", "M", "M", "M", "M",
           "M", "M", "M", "M", "M", "M", "M","A","A")



#frecuencia absoluta

FrecuenciaAbsoluta = table(results)
FrecuenciaAbsoluta

#frecuencia relativa

FrecuenciaRelativa = FrecuenciaAbsoluta/length(results)
FrecuenciaRelativa

 
