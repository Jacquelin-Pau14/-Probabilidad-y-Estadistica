#Analisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de a prueba pisa 2009
#que se encuentra precargada en el paquete likert 
#mediante el comando data

data("pisaitems")

#le pondremos un nuevo nombre a la matriz de datos

pisa<-pisaitems

#exploramos la matriz de datos

names(pisa)
typeof(pisa)
str(pisa)

#visualisamos los valores que componen una variable

head(pisa$CNT)
head(pisa$ST24Q01)

#buscamos los valores perdidos

anyNA(pisa)

#numero total de datos perdidos en la matriz de datos

sum(is.na(pisa))

#eliminacion de filas con datos perdidos y creamos una nueva matriz

pisa2<-na.omit(pisa)

#verificamos que la matriz nueva no tenga valores perdidos

anyNA(pisa2)

head(pisa2)

#empezamos a trabajar con la nueva matriz de datos

#--------------------Variable 24-------

#agrupamiento de items

names(pisa2)
items24<-pisa2[,2:12]
head(items24[1:6,1:6])

#renombramos las etiquetas de respuesta

levels(items24)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

#Colocar los nombres de los indicadores

names(items24)<-c("Leo si es necesario",
                  "Leer es de mis pasatiempos favoritos",
                  "Me gusta hablar de libros con otras personas",
                  "Encuento dificil terminar un libro",
                  "Me siento feliz sí recibo un libro como regalo",
                  "Para mi, leer es una pérdida de tiempo",
                  "Disfruto ir a una librería o bilioteca",
                  "Leo sólo para obtener la información que necesito",
                  "No puedo estar sentado leyendo por más de 5 minutos",
                  "Me gusta expresar mi opinion sobre un libro cuando lo he leído",
                  "Me gusta intercambiar libros con mis amigas-os")

l24<-likert(items24)

#Generamos el grafico de barras

plot(l24,type="bar",centered=FALSE)

#Grafico de barras con porcentajes

install.packages("plyr")
library(plyr)

plot(l24,type="bar",centered=TRUE,plot.percents=TRUE)

#Grafico de barras ordenado

plot(l24,group.order = colnames(items24))

#Grafico de densidad

likert.density.plot(l24,facet = TRUE,bw=0.5,
                    legend = "Gráfico de densidad")

#Grafico de calor

plot(l24,type="heat")

#---------------------------- Variable 25---------------

#agrupamiento de items

items25<-pisa2[,substr(names(pisa2),1,5)=='ST25Q']

#identificar las respuestas de agrupamiento
#y generamos una nueva variable.

names(items25)<-c("Magazines","comics books","Fiction",
                  "Non-Fiction books","Newspapers")
l25<-likert(items25)

#Visualizamos los niveles en los que se agrupan los indicadores

head(l25)

#Generamos el graico de barras de las respuestas el conjunto.

plot(l25,type="bar",centered=FALSE)

#Grafico de barras con porcentajes

library(plyr)

plot(l25,type="bar",centered=TRUE,plot.percents=TRUE)

#Grafico de media y sd
#activar funcion plot.likert
#se encuentra en un script alterno.
library(plot.likert)

plot.likert(as.numeric(pisa2$ST24Q01),
            left="Completamente en desacuerdo",
            right="Completamente de acuerdo",
            plot.median=TRUE,
            plot.sd=TRUE)
