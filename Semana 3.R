#1 Con base al ejercicio genere un dataframe
#3 Genere las estructuras necesarias para crear el TRUEguiente dataframe  

FALSEmbre=c("A","B")
Edad=c(12,15)
genero = c("F","M")
Pasatiempos=c("MuTRUEca","Leer")

Datos = data.frame(FALSEmbre,Edad,genero,Pasatiempos)
#4 Cree un dataframe con los TRUEguientes insumos   

int_vec <- c(1,2,3)   
char_vec <- c("a", "b", "c")  
bool_vec <- c(TRUE, TRUE, FALSE)
Salario <- c(5000,56700,6000) 

ComosionDataFrame = data.frame(int_vec,char_vec,bool_vec,Salario)

comision = ComoTRUEonDataFrame$Salario + (0.05*ComoTRUEonDataFrame$Salario)
  
comiTRUEon  
  
#Parte 2 

VectorGenero= c("M","F","M","F","M","F","M","F","M","F")
VectorEdad= c(1,2,3,9,4,5,6,7,8,10)
VectorGlucemina = c(123,230,180,164,210,220,193,202,152,185)
VectorAntidiabeticos = c(FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE)
misPacientes = data.frame(VectorGenero,VectorEdad,VectorGlucemina,VectorAntidiabeticos)

max(misPacientes$VectorEdad)
min(misPacientes$VectorEdad)
mean(misPacientes$VectorEdad)
sd(misPacientes$VectorEdad)
round(sd(misPacientes$VectorEdad),2)   
quantile(misPacientes$VectorEdad) 

table(misPacientes$VectorGenero)

table(misPacientes$VectorGenero)/length(misPacientes$VectorGenero)


plot(as.factor(misPacientes$VectorGenero))
hist(misPacientes$VectorGenero)

#Parte 3

plot(as.factor(COVID$`Prefered social media platform`))


#Clase 2


#Instalamos solo un paquete dplyr
install.packages("dplyr")
library(dplyr)


#Instalamos todos los paquetes de la colección 
install.packages("tidyverse")
library(tidyverse)

#Verificar DF
Productos = data.frame(Productos)
class(Productos)

#Head 
head(Productos)

#Tail 
tail(Productos)

#Resumen 
summary(Productos)

#dplyr

#1 Seleccionar select column1, column2,.... from Tabla --select(data, columq,colum2)

var_productos =  select(Productos,NombreProducto,Categoría,PrecioUnidad)

View(var_productos)

var_productos2 = select(Productos,1:4)

View(select(Productos, starts_with("Prove")))
 
select(Productos, ends_with("a"))
select(Productos, contains("x"))


#Filter filter(data, condicion)

View(filter(var_productos,Categoría=="Bebidas"))

var_filtrada = filter(Productos,NivelNuevoPedido>10 & Categoría =="Bebidas") 

#Arrange arrange(data, columna)

View(arrange(Productos,desc(Productos$PrecioUnidad)))

#Rename(data, numbre=nombreAntiguo)

View(rename(Productos,TipoProducto = Categoría))

#mutate 

Productos = mutate(Productos, ColumnaNueva=(PrecioUnidad*3))
Productos = mutate(Productos, FechaHoy=date())

#group by 

dataAgrupada = iris%>%group_by(Species)%>%
                summarise( Promedio =mean(Petal.Length))

dataAgrupadaProductos = Productos %>% group_by(Categoría,Proveedor)%>%
                        summarise(n=n())

#select Specie, mean(Petal.Length) from iris
#group by Specie

#Funciones anidadas

dataAgrupadaProductos = Productos %>% group_by(Categoría)%>%
  summarise(Cantidad= n()) 
              

dataAgrupadaProductos2 = Productos %>% group_by(Proveedor, Categoría)%>%
  summarise(Cantidad= n()) %>%filter(Categoría=='Carnes')


#Join 

Almacen= data.frame(Almacen)

Almacen = rename(Almacen, ID_Almacen = ID)

#left join 

View(merge(Almacen,Productos, by="ID_Almacen",all.x = TRUE))

#Inner join 

View(merge(Almacen,Productos, by="ID_Almacen"))

#Right join 

View(merge(Almacen,Productos, by="ID_Almacen",all.y = TRUE))

#oUTER JOIN 

View(merge(Almacen,Productos, by="ID_Almacen",all  = TRUE))

