# Instala los paquetes:
install.packages("syuzhet")
install.packages("RColorBrewer")
install.packages("wordcloud")
install.packages("tm")

# Carga los paquetes
library(syuzhet)
library(RColorBrewer)
library(wordcloud)
library(tm)

data ='Hola buenas tardes, muchas gracias 
Estoy enojado 
El servicio es muy malo 
Hola  muy amable
dependo de su servicio 
gracias por su forma de atender 
no tienen nada 
muy enojado 
fatal'
texto_cadena <- scan(file = "https://raw.githubusercontent.com/programminghistorian/jekyll/gh-pages/assets/galdos_miau.txt", fileEncoding = "UTF-8", what = character(), sep = "\n", allowEscapes = T)
 
texto_cadena =data

texto_palabras <- get_tokens(texto_cadena)
head(texto_palabras)

length(texto_palabras)

oraciones_vector <- get_sentences(texto_cadena)
length(oraciones_vector)

sentimientos_df <- get_nrc_sentiment(texto_palabras, lang="spanish")

head(sentimientos_df)

summary(sentimientos_df)


barplot(
  colSums(prop.table(sentimientos_df[, 1:8])),
  space = 0.2,
  horiz = FALSE,
  las = 1,
  cex.names = 0.7,
  col = brewer.pal(n = 8, name = "Set3"),
  main = "CAD",
  sub = "Análisis",
  xlab="emociones", ylab = NULL)



barplot(colSums(prop.table(sentimientos_df[, 1:8])))


palabras_tristeza <- texto_palabras[sentimientos_df$sadness> 0]


palabras_tristeza_orden <- sort(table(unlist(palabras_tristeza)), decreasing = TRUE)
head(palabras_tristeza_orden, n = 12)



write.csv(sentimientos_df, file = "analisis_sent_miau.csv", row.names = texto_palabras)
