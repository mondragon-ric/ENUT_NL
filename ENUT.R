# Cargamos las librerias
library(readxl)

#Establecemos la carpeta de origen y cargamos las bases de datos
setwd("C:/Users/")
datos <- read.csv("TMODULO.CSV")
datos <- data.frame(datos)

#Recortamos la base a solo datos de Nuevo Leon
datos <- subset(datos, ENT == 19)

#Podemos estimar el numero de personas de 12 años o más que asistieron a parques, cines, ferias, estadios 
#o canchas, museos u otros sitios culturales o de entretenimiento al menos una vez en el 2019

#Tomamos a cada persona que asistio y la multiplicamos por su factor de expansion
asist_cultura <- datos$P6_20[datos$P6_20 == 1]*datos$FAC_PER[datos$P6_20 == 1]

#Sumamos la multiplicacion para estimar el numero de personas
sum(asist_cultura)

#Aproximadamente 1,129,981 neoleoneses asistieron a parques, cines, ferias, estadios 
#o canchas, museos u otros sitios culturales o de entretenimiento al menos una vez en el 2019
#esta cifra se puede comparar con la estimacion de la poblacion de 12 años o más de Nuevo Leon
#en 2019 para estimar el porcentaje de poblacion que realizo estas actividades

#Obtenemos la estimacion de CONAPO para la poblacion de Nuevo Leon en la segunda mitad del 2019
pob <- read.csv("pob.csv")
pobnl <- sum(pob$POBLACION[pob$AÑO == 2019 & pob$CVE_GEO == 19 & pob$EDAD >= 12])

#Se obtiene el cociente de la estimacion que asistio a algun lugar o evento cultural entre 
#la estimacion de la poblacion de 12 años o mas
sum(asist_cultura)/pobnl






