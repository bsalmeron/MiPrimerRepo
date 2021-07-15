#Syuzhet

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
#Paso 1 crear texto 

texto_cadena ='Hola buenas tardes, muchas gracias 
Estoy enojado 
El servicio es muy malo 
Hola  muy amable
dependo de su servicio 
gracias por su forma de atender 
no tienen nada 
muy enojado 
fatal'


#Paso 2 tokenizar
texto_palabras <- get_tokens(texto_cadena)
head(texto_palabras)
length(texto_palabras)

#Paso 3 crear oraciones test
oraciones_vector <- get_sentences(texto_cadena)
length(oraciones_vector)

#Paso 4 Extracción de datos con el Léxico de Sentimientos NRC

sentimientos_df <- get_nrc_sentiment(texto_palabras, lang="spanish")

View(sentimientos_df)

summary(sentimientos_df)

#Graficar 

barplot(
  colSums(prop.table(sentimientos_df[, 1:8])),
  space = 0.2,
  horiz = FALSE,
  las = 1,
  cex.names = 0.7,
  col = brewer.pal(n = 8, name = "Set3"),
  main = "Centro de contacto",
  sub = "Análisis",
  xlab="emociones", ylab = NULL)


barplot(colSums(prop.table(sentimientos_df[, 1:8])))

#Recuento de palabras 

palabras_tristeza <- texto_palabras[sentimientos_df$sadness> 0]

palabras_tristeza_orden <- sort(table(unlist(palabras_tristeza)), decreasing = TRUE)


#Nube de emociones 

nube_emociones_vector <- c(
  paste(texto_palabras[sentimientos_df$sadness> 0], collapse = " "),
  paste(texto_palabras[sentimientos_df$joy > 0], collapse = " "),
  paste(texto_palabras[sentimientos_df$anger > 0], collapse = " "),
  paste(texto_palabras[sentimientos_df$fear > 0], collapse = " "))

nube_emociones_vector <- iconv(nube_emociones_vector, "latin1", "UTF-8")

nube_corpus <- Corpus(VectorSource(nube_emociones_vector))

nube_tdm <- TermDocumentMatrix(nube_corpus)
nube_tdm <- as.matrix(nube_tdm)

colnames(nube_tdm) <- c('tristeza', 'felicidad', 'enfado', 'confianza')
head(nube_tdm)

set.seed(757) # puede ser cualquier número
comparison.cloud(nube_tdm, random.order = FALSE,
                 colors = c("green", "red", "orange", "blue"),
                 title.size = 1, max.words = 50, scale = c(2.5, 1), rot.per = 0.4)