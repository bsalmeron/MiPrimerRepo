#Histogramas
#Analisis exploratorio 1- Qué quiero

hist(x=Netflix$`IMDB Score`, 
     main = "Histograma IMDB Score - Netflix", 
     xlab = "Score", 
     ylab = "Frecuencia",
     col = "red")


#Plots

#Relación y correlación
#Dispersión
plot(Netflix$Runtime,Netflix$`IMDB Score`)

#Grafico de barras
dataNetflixFiltrada = filter(Netflix, Netflix$`IMDB Score`>6  & `IMDB Score`<6.5)

plot(as.factor(dataNetflixFiltrada$Genre))

#Time based plot

mis_fechas <- seq(as.Date("2014/1/1"), by = "month", length = 50 ) 

plot(mis_fechas,rnorm(50), type = "l")

#Correlación 
                  
View(trees)

plot(select(trees,1:3))


plot(mis_fechas,rnorm(50), type = "o", main = "Hola")

#Ejemplo 

t <- rep(seq(25, 5, -5), 5)

r <- c(sapply(seq(5, 25, 5), function(i) rep(i, 5)))


plot(r, t, pch = 1:25, cex = 3, yaxt = "n", xaxt = "n",  ann = FALSE, xlim = c(3, 27), lwd = 1:3)
text(r - 1.5, t, 1:25)



plot(mis_fechas,rnorm(50), type = "o", pch= 5, main = "Hola", col= "red",
     cex=1, lwd= 1, sub = "Sub titulo", ylab = "Titulo y", xlab = "Titulo x",
     ylim = c(0,3))

#Funciones 

#Sistema
hist()
plot()
head()
mean()
min()
max()

#Funciones por el usuario
nombre <- function(argumentos) {
  IF(S){
    #LOGICA
  }ELSE{
  }
}



Plot_Score <- function(score1,score2, idioma) {
  dataNetflixFiltrada = filter(Netflix, `IMDB Score`>score1  &
                                 `IMDB Score`<score2 &
                                  Language==idioma)
  plot(as.factor(dataNetflixFiltrada$Genre))
  
}

Suma(1,10)


Plot_Score(6,8,"Italian")




