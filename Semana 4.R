#Histogramas
#Analisis exploratorio 1- Qué quiero

hist(x=Netflix$`IMDB Score`, 
     main = "Histograma IMDB Score - Netflix", 
     xlab = "Score", 
     ylab = "Frecuencia",
     col = "red")


#Plots

#Relación y correlación 

plot(Netflix$Runtime,Netflix$`IMDB Score`)

