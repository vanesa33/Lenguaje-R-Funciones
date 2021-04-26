#Empecemos..... Bienvenidxs!

#Funciones
potencia <- function(x,y){
  result<-x^y
  paste(x, "elevado a la potencia de ", y , "es", result)
}
potencia (4,2)

#Importante! La funcioon paste(),
#une todos los vectores de caracteres 
#que se le suministran y construye una sola cadena de caracteres

cuadrado <- function(x){
  resultado <- x*x
  paste("El cuadrado de", x, "es:", resultado)
}
cuadrado(7)

cuadrado1 <- function(x){
  return (x*x)
}
cuadrado1(7)

#¿cual es la diferencia entre la funcion cuadrado y cuadrado1?
#en una guardo el resultado del calculo y lo muestro por pantalla

## For
for (i in 1:10){
  print(i)
}

fin <-20
for (i in 1:fin){
  print(i)
}

##While
k <-1
while(k<10){
  print(k)
  k<-k+1
}

##Repeat
i = 0 
repeat{
  print(i)
  i<-i+1
  if (i == 5) break
}

###Importando archivos y paquetes

#El comando que se utiliza por defecto para instalar archivos es
#install.packages("nombrePaquete")

#Por ejemplo: install.packages("ggplot2")

#Luego siempre debemos hacer uso del comando: library(nombrePaquete)
#para llamar a nuestra libreria.

#Para acceder a la descripcion de un paquete:
packageDescription("ggplot2")

#Para ver la ayuda del paquete
help(package = "ggplot2")

#Paquetes mas populares para carga de datos:
#SQLdf, RODBC, RPostgresSQL, RSQLite, readxl

#Para manipulacion de datos:
#plyr, reshape2, stringr

#Para visualizacion de datos e informacion:
#ggplot2, rgl, shiny

#Para modelizacion:
#caret, car, forecast

#Ahora si, empecemos a importar algunos archivos! Lo primero 
#que tenemos que tener en cuenta es nuestro directorio. 

getwd()

dir() #me muestra los archivos del directorio

setwd("C:/Users/Layla Scheli/Desktop")

getwd() ## verifico si me modifico la ruta

setwd("C:/Users/Layla Scheli/Desktop/Docencia/BA Emprende/Programa en Ciencia de Datos/2. Clase")

getwd()

#Otros comandos importantes

#objects() me lista los objetivos que tengo en memoria
#rm("nombreObjeto") elimina un objeto

#Leemos nuestro primer archivo
DatosEPH <- read.csv2("DatosEPH2016.csv", 
                      header = T)
View(DatosEPH)

#Si quisiera eliminar:
#rm(DatosEPH)

#Leemos nuestro segundo archivo
empleados <- read.csv2("empleados.csv", sep = ",")

#Leemos nuestro tercer archivo
#install.packages("readxl")
#library(readxl)
clientes <- readxl::read_excel("Clientes.xlsx")

#Leemos nuestro cuarto archivo
customerProfitability <- readxl::read_excel("Customer Profitability Sample.xlsx")

#Leemos nuestro quinto archivo
precioAvisos <- read.csv(file = 'https://raw.githubusercontent.com/martintinch0/CienciaDeDatosParaCuriosos/master/data/precioBarrios.csv',
                         sep=';',
                         stringsAsFactors = FALSE)
View(precioAvisos)

#Con stringsAsFactors = FALSE estamos indicandole a R que no
#queremos que convierta nuestros datos en factores

#Por ultimo y no menos importante, como creamos un proyecto en R?