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
dataNetflixFiltrada = filter(Netflix, `IMDB Score`>6  & `IMDB Score`<6.5)

plot(as.factor(dataNetflixFiltrada$Genre))

#Time based plot

mis_fechas <- seq(as.Date("2014/1/1"), by = "month", length = 50 ) 

plot(mis_fechas,rnorm(50), type = "l")

#Correlación 
                  
View(trees)

plot(select(trees,1:3))


plot(mis_fechas,rnorm(50), type = "s", main = "Hola")

