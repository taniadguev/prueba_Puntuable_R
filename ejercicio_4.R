#a
mosquitos <- read.csv("mosquito_alert.csv")
print(mosquitos)

#b
n_registros <- nrow(mosquitos)
print(n_registros)

#c
especies<-mosquitos[,c(11)]
unique(especies)

#d
#paises
paises<-mosquitos[,c(2)]
listaPaises<-unique(paises)
print(listaPaises)
length(listaPaises)

#provincias
provincia<- mosquitos[,c(3)]
provincias<-unique(provincia)
print(provincias)
length(provincias)

#e
mosquitos_por_anio <- aggregate(mosquitos$record.ID, by=list(mosquitos$year), FUN=length)
x <- mosquitos_por_anio$Group.1
y <- mosquitos_por_anio$x
barplot(y, names.arg = x, col="blue", xlab="Año", ylab="Número de Mosquitos")
#x <- levels(factor(mosquitos$year))


#f
mosquitos_por_mes <- aggregate(mosquitos$record.ID, by=list(mosquitos$month), FUN=length)
xm <- mosquitos_por_mes$Group.1
ym <- mosquitos_por_mes$x
barplot(y, names.arg = x, col="yellow", xlab="Mes", ylab="Número de Mosquitos")


#g
provincias_con_aedes_japonicus <- unique(mosquitos$provincia[mosquitos$species == "Aedes japonicus"])
provincias_con_aedes_japonicus


#h
anyo_primer_registro_aedes_japonicus <- min(mosquitos$year[mosquitos$species == "Aedes japonicus"])
anyo_primer_registro_aedes_japonicus

