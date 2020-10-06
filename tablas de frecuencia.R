
#Tema: Tabla de frecuencias

#1.- Leer la matriz de datos
data("iris")

#2.- Exploramos la matriz de datos
names(iris)

#3.- Explora la dimension de la matriz
dim(iris)

#4.- Identificar los tipos de variables
str(iris)

#5.- Detectar valores perdidos
anyNA(iris)

#6 Explorar una variable
iris$Species

#7.-Revisamos tipo de matriz
typeof(iris)

#8.- Convertimos la tabla de datos a un data frame
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

#9.- Mostramos la tabla
tabla_PL

#10.-Se construye la tabla de frecuencias 
transform(tabla_PL ,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
#11.- Agrupamos las variables en 10 clases y se calcula la frecuencia absoluta
tabla_clases<-as.data.frame(table
                            (Petal.length = factor
                              (cut(iris$Petal.Length,
                                   breaks = 9))))
#12.- Visualizamos la tabla de clases
tabla_clases

#13.- Construccion de la tabla de frecuencias completa redondeando las frecuencias #relativas a 3 decimales
transform(tabla_PL ,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))