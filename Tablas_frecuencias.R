
# ____ Tablas de frecuencias ____ 

# 1.- Importar la matriz iris

data(iris)

# 2.- Exploración de la matriz
# dimensión de la matriz tiene 150 individuos y 5 variables
dim(iris)

# 3.- Nombre de las variables
colnames(iris)

# 4.- Tipos de variables
str(iris)

# 5.- Visualización de una variable específica 
iris$Species

# 6.- En busca de valores perdidos
anyNA(iris)


#------------------------------------------
#    Generación de tablas de frecuencia
#------------------------------------------

# 1.- Posición en una variable específica petal.Lenght indico que
# el nombre me lo acorte a PL, lo que resulte de esa indicación quiero que 
# lo ponga en formato tabla, lo que resulte adquiera un formato de data.frame
# A partir de lo anterior voy a generar una nueva variable (objeto) llamada
#tabla_PL.
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

# 2.- Frecuencia absoluta 
tabla_PL

# 3.- Se construye la tabla de frecuencias completas redondeando
# a 3 decimales 

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))


# 4.- Agrupación de variables 8 clases
tabla_Clases<-as.data.frame(table(petal.Lenght=factor(cut(iris$Petal.Length,
                                                          breaks = 8))))
# 5.- Visualización de la tabla
tabla_Clases
                                                    
# 6.- Construcción de tabla de frecuencias completa redondeado a 3 decimales                                                 
tabla<-transform(tabla_Clases,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 7.- Visualizar la tabla 
tabla

