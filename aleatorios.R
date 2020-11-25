
#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

sample(1:83,39, replace = FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

muestra<-c(6, 64, 30, 62, 37, 11, 44, 23, 7, 22, 18, 54, 2, 72, 51, 41, 77, 26, 34, 4, 69, 53, 63, 46, 9, 8, 78, 81, 74, 10, 19, 57, 24, 17, 39, 73, 21, 15, 55)


View(muestra)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

sample(1:90,42, replace = FALSE)

muestra_jacque<-c(66, 26, 31, 23, 22,  7, 68, 34, 75, 42, 85,
                  33, 88, 63, 10, 20,  4, 90, 25, 36,
                  64, 15, 65,  9, 77, 73, 45, 69, 48, 82, 29,
                  56, 86, 79, 53, 76, 24, 78,  1, 40,
                  21, 71)

View(muestra_jacque)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
#Preescolar: 84 personas egresadas.
#Física: 35 personas egresadas.
#Telesecundaria: 83 personas egresadas.
#Especial: 25 personas.



sample(1:78,36, replace = FALSE)

muestraprimaria<-c(49, 53, 50, 38, 56, 24, 71, 60, 76, 25, 4, 30,  3, 65, 12,
                   22, 27, 23, 47, 35, 67, 74, 51, 26, 66, 58, 16, 29, 57, 62,
                   40, 54,  9, 32, 36, 19)

View(muestraprimaria)

sample(1:84,38, replace = FALSE)

muestrapreescolar<-c(21, 80, 83, 18, 28, 11, 69, 65, 38, 71, 
                     70, 50, 74,  4, 14, 57, 54, 48, 59,  3,
                     56, 27,  6,  5, 30, 31, 22, 15, 40, 35,
                     76, 52, 64, 17, 46, 67, 42, 24)

View(muestrapreescolar)


sample(1:35,18, replace = FALSE)

muestrafisica<-c(28, 19, 31,  8,  9, 25, 32,  7,  6, 23,  2, 10,
                 12, 20, 13, 16, 22, 14)

View(muestrafisica)


sample(1:83,37, replace = FALSE)


muestratelesecundaria<-c(76, 26,  2,  9,  4,  7, 17,
                         10, 16, 59, 37, 19, 12, 27, 46, 69,
                         57, 43, 60, 48, 77, 39, 41, 68, 56,
                         1, 73, 67, 72, 23, 38, 11, 30, 40,
                         14, 22, 54)

View(muestratelesecundaria)


sample(1:25,13, replace = FALSE)

muestraespecial<-c(8, 19,  4, 22,  5, 14, 13, 25,  
                   7,  2, 12, 15, 23)

View(muestraespecial)