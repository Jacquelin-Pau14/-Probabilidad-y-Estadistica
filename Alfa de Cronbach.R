install.packages("userfriendlyscience")
library("userfriendlyscience")

#Exploramos la matriz de dats

dim(BD_Likert)
names(BD_Likert)
str(BD_Likert)
typeof(BD_Likert)

#Buscamos valores perdidos
anyNA(BD_Likert)

#Localizamos la posicion de los valores perdidos

which(is.na(BD_Likert))

#Eliminamos las filas que contengan datos perdidos
# y se guardara la matriz nueva con la que trabajaremos

BD_Likert2<-na.omit(BD_Likert)
anyNA(BD_Likert2)

#Construccion de constructos

names(BD_Likert2)

constructo1<-select(BD_Likert2,16,17,27,42,43,46,50,52)
constructo2<-select(BD_Likert2,18,28,29,45)
constructo3<-select(BD_Likert2,21,22,36,40,44,49)
constructo4<-select(BD_Likert2,23,31,35,38,41,47,48,53,55,56,57,58,59)
constructo5<-select(BD_Likert2,13,15,24,25,26,30,32,37,39,54,60)
constructo6<-select(BD_Likert2,12,14,19,20,34,51,61,62)
constructo7<-select(BD_Likert2,1,2,3,5,6,7,11,33)
constructo8<-select(BD_Likert2,4,8,9,10)

#instalamos paqueteria para alfa de cronbach
library(psych)

alpha(constructo1)
alpha(constructo2)
alpha(constructo3)
alpha(constructo4)
alpha(constructo5)
alpha(constructo6)
alpha(constructo7)
alpha(constructo8)
