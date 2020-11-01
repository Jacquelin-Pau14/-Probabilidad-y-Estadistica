
#Abrimos la matriz de datos flores y la pondremos dentro de un
#objeto de igual nombre
install.packages("datos")
library(datos)

flores<-(datos::flores)

#Vamos a explorar la matriz de datos con los siguientes comandos
?flores #ayuda
dim(flores) #dimension
names(flores) #nombre de las variables
str(flores) #tipo de variable
anyNA(flores) #me indica los datos perdidos
typeof(flores) #tipo de matriz de datos
View(flores) #v mayuscula si no no abre #visualizacion de la tabla (data frame)

#Convertiremos la matriz de datos a "data frame"

flores_1<-as.data.frame(flores)

#iniciaremos calculando los estadisticos descriptivos
summary(flores_1)

#calcularemos la moda, instalando
#paquete modeest y abrir la libreria
install.packages("modeest")
library(modeest)

#la funcion que utilizaremos para identificar la moda
#es mfv()
mfv(flores_1$Largo.Sepalo)
mfv(flores_1$Ancho.Sepalo)
mfv(flores_1$Largo.Petalo)
mfv(flores_1$Ancho.Petalo)
mfv(flores_1$Especies)

#calculamos la varianza de cada una de las variables
#cuantitativas
var(flores_1$Largo.Sepalo)
var(flores_1$Ancho.Sepalo)
var(flores_1$Largo.Petalo)
var(flores_1$Ancho.Petalo)

#calcularemos la desviacion estandar para cada una de las
#variables cuantitativas

sd(flores_1$Largo.Sepalo)
sd(flores_1$Ancho.Sepalo)
sd(flores_1$Largo.Petalo)
sd(flores_1$Ancho.Petalo)

#calcularemos el error para la variable largo del sepalo

mean_1<-mean(flores_1$Largo.Sepalo)
error_1<-(flores_1$Largo.Sepalo-(mean_1))

#visualizamos el objeto error_1
error_1

#coeficiente de variacion
#vamos a instalar el paquete FinCal y abrimos la libreria
install.packages("FinCal")
library(FinCal)

#calculamos el coeficiente de variacion
coefficient.variation(sd=sd(flores_1$Largo.Sepalo),
                      avg=mean(flores_1$Largo.Sepalo))

#interpretacion: el largo del sepalo de las 3 especies tiene
#un coeficiente de variacion del 0.14, lo multiplicamos por 100 y obtenemos
#el 14%, es decir, la variable largo del sepalo tiene un coeficiente de
#variacion del 14% con respecto a la media

#................ Empezaremos a construir algunos graficos....

#instalaremos el paquete tidyverse y abriremos la libreria

install.packages("tidyverse")
install.packages("RColorBrewer")

#abrimos la libreria

library(tidyverse)
library(RColorBrewer)


#Grafico de Barras

#construccion de la tabla con la que vamos a trabajar

attach(flores_1)
tabla_especies<-table(flores_1$Especies)

#visualizamos la variable x que contiene la columna de Especies
tabla_especies

#Especificamos la paleta de colores que vamos a utilizar
color=c("firebrick4", "firebrick1", "darksalmon")

#construimos el grafico de la variable x

barplot(tabla_especies,xlab="Especies", ylab="Frecuencias",
        main="Grafico de barras de Especies", col=color)

#BOXPLOT

boxplot<-ggplot(flores_1,aes(factor(Especies),
                             Largo.Sepalo, fill=Especies))+
  geom_boxplot()+
  ggtitle("Boxplot del Largo del sepalo")+
  xlab("Especies")+
  ylab("Largo del sepalo")

#visualizamos el grafico

boxplot


#Diagrama de dispersion 1

dispersion_1<-ggplot(flores_1, aes(x=Largo.Petalo, y=Largo.Sepalo, color=Especies))+
  geom_point()

#visualizamos el grafico

dispersion_1

#Diagrama de dispersion 2

attach(flores_1)
par(mfrow=c(1,1))
dispersion_2<-plot(flores_1$Largo.Petalo,flores_1$Ancho.Petalo,pch=19,
                   col="aquamarine4",
                   xlab="Largo del Pétalo",
                   ylab="Ancho del Pétalo")

#Diagrama de dispersion 3

  dispersion_3<-ggplot(flores_1, aes(x=flores_1$Largo.Sepalo, y=flores_1$Ancho.Sepalo,
                                     colour=Especies))+
    geom_point(alpha=.9)+
    xlab("Largo del sépalo")+
    ylab("Ancho del sépalo")

  #Histograma 1, visualizando la variable largo del petalo
  
  ggplot(flores_1, aes(x=Largo.Petalo))+
    geom_histogram(binwidth = 0.1, col="midnightblue", fill="orange", alpha=0.4)+
    xlab("Largo del petalo")+
    ylab("Frecuencia")+
    ggtitle("Histograma del largo del petalo")
  
  #Histograma 2
  
  par(mfrow=c(1,3))

  hist(flores_1[1:50,3], main="Largo del petalo (setosa)",
       xlab="",ylab="Frecuencias",col="red", breaks= "Sturges")+  

  hist(flores_1[51:100,3], main="Largo del petalo (versicolor)",
       xlab="", ylab="Frecuencias", col="blue", breaks= "Sturges")
  hist(flores_1[101:150,3], main= "Largo del petalo(virginica)",
       xlab="", ylab="Frecuencias", col="green", breaks= "Sturges")
  
  