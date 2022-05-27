#_____RECODIFICACION DE VARIABLES_____
# Se trabaja con la matriz "Escuela"

# 1. Importacion de la matriz 

#________________________________________
#      Exploracion de la matriz
#________________________________________


# numero de variables
dim(Escuela_1)

# organizacion basada en factores
str(Escuela_1)

#Presentacion de datos: calificacion minima, maxima. Mediana. primer y tercer cuartil
summary(Escuela_1)

#_________________________________________
#      Configuracion de variables
#_________________________________________

Escuela_1$genero<-factor(Escuela_1$genero,
                       levels=c("Femenino", "Masculino"))

Escuela_1$Matematicas<-factor(Escuela_1$Matematicas,
                            levels=c("5","6","7","8","9","10"))

Escuela_1$Espa�ol<-factor(Escuela_1$Espa�ol,
                        levels=c("5","6","7","8","9","10"))

Escuela_1$Ciencias<-factor(Escuela_1$Ciencias,
                         levels=c("5","6","7","8","9","10"))

Escuela_1$Geografia<-factor(Escuela_1$Geografia,
                          levels=c("5","6","7","8","9","10"))


dim(Escuela_1)
colnames(Escuela_1)
str(Escuela_1)
anyNA(Escuela_1)
summary(Escuela_1)

Escuela_1$Matematicas<-factor(Escuela_1$Matematicas, 
                            levels=c("5", "6", "7", "8", "9","10"))

Escuela_1$Espa�ol<-factor(Escuela_1$Espa�ol,
                        levels=c("5","6","7","8","9","10"))

Escuela_1$Ciencias<-factor(Escuela_1$Ciencias,
                         levels=c("5","6","7","8","9","10"))

Escuela_1$Geografia<-factor(Escuela_1$Geografia,
                          levels=c("5","6","7","8","9","10"))

str(Escuela_1)
summary(Escuela_1)
View(Escuela_1)

# 1.- Creacion de un vector de color
color=c("coral")

# 2.- Creacion del grafico
GB1<-ggplot(Escuela_1, aes(x=Matematicas))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Calificación Matemáticas")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB1

# 1.- Creacion de un vector de color
color=c("coral")

# 2.- Creacion del grafico
GB2<-ggplot(Escuela_1, aes(x=Espa�ol))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Calificación Español")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del gráfico
GB2

# 1.- Creacion de un vector de color
color=c("coral")

# 2.- Creacion del grafico
GB3<-ggplot(Escuela_1, aes(x=Ciencias))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Grafico de Barras")+
  xlab("Calificacion Ciencias")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB3

# 1.- Creacion de un vector de color
color=c("plum3")

# 2.- Creacion del grafico
GB4<-ggplot(Escuela_1, aes(x=Geografia))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Calificación Geografia")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB4
