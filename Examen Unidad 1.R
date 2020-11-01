
#Exploramos la matriz de datos "milas"
millas<-(datos::millas)
?millas
dim(millas)
names(millas)
str(millas)
anyNA(millas)
typeof(millas)

#Convertir la matriz de datos en data.frame
millas<-as.data.frame(millas)

#Iniciare calculando los estadisticos descriptivos
summary(millas)

#Activacion de la moda
library(modeest)

#Identificar la moda
mfv(millas$fabricante)
mfv(millas$modelo)
mfv(millas$cilindrada)
mfv(millas$anio)
mfv(millas$cilindros)
mfv(millas$transmision)
mfv(millas$traccion)
mfv(millas$ciudad)
mfv(millas$autopista)
mfv(millas$combustible)
mfv(millas$clase)

#Calcular la varianza de las variables cuantitativas

var(millas$cilindrada)
var(millas$anio)
var(millas$cilindros)
var(millas$ciudad)
var(millas$autopista)

#Calcular la variacion estandar de cada una de las variables cuantitativas

sd(millas$cilindrada)
sd(millas$anio)
sd(millas$cilindros)
sd(millas$ciudad)
sd(millas$autopista)

#Coeficiente de variacion
#instalamos paquete y abrimos libreria.
install.packages("FinCal")
library(FinCal)

coefficient.variation(sd=sd(millas$cilindrada),
                      avg=mean(millas$cilindrada))
coefficient.variation(sd=sd(millas$anio),
                      avg=mean(millas$anio))
coefficient.variation(sd=sd(millas$cilindros),
                      avg=mean(millas$cilindros))
coefficient.variation(sd=sd(millas$ciudad),
                       avg=mean(millas$ciudad))
coefficient.variation(sd=sd(millas$autopista),
                      avg=mean(millas$autopista))

#instalar tidyverse y rcolor

install.packages("tidyverse")
install.packages("RColorBrewer")

#abrimos librerias

library(tidyverse)
library(RColorBrewer)

#Grafico de dispersion

dispersion_1<-ggplot(millas, aes(x=cilindrada, y=autopista, color=clase))+
  geom_point()

#visualizamos el grafico

dispersion_1

#Grafico Boxplot

boxplot<-ggplot(millas, aes(factor(transmision),
                            ciudad, fill=transmision))+
  geom_boxplot()+
  ggtitle("Transmision de autos en ciudad")+
  xlab("Transmision")+
  ylab("Ciudad")

#Visualizamos el grafico

boxplot

#Grafico de barras

attach(millas)
tabla_cilindros<-table(millas$cilindros)

#Visualizamos la variable x que contiene la columna cilindros
tabla_cilindros

#especificamos la paleta de colores que vamos a utilizar
color=c("firebrick4", "firebrick1", "darksalmon", "blue")

#construimos el grafico de la variable x

barplot(tabla_cilindros,xlab="Cilindros", ylab="Frecuencias",
        main="Grafico de barras de Cilindros", col=color)
