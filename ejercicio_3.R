# Definir los números como un vector
numeros <- c(7.3, 6.8, 0.005, 9, 12, 2.4, 18.9, 0.9)

# Calcular la media
media <- mean(numeros)
media

# Calcular la raíz cuadrada de cada número
raiz_cuadrada <- sqrt(numeros)
raiz_cuadrada

#Esto devolverá la media de los números, que es 7.11875, y la raíz cuadrada de cada número en el vector.

#Para representar los datos del archivo cherries.csv en R, puedes seguir estos pasos:

# Cargar los datos del archivo cherries.csv
cherries <- read.csv("CARPETA_M14_BioInformática\\UF1_BIO\\Prova avaluable R-20230424\\Soluciones\\cherries.csv")

c# Representar la altura del árbol ante el diámetro del tronco en un gráfico de puntos
plot(cherries$Girth, cherries$Height, xlab = "Diámetro del tronco (pulgadas)", ylab = "Altura del árbol (pies)")

# Representar el volumen del árbol ante el diámetro del tronco en un gráfico de puntos
plot(cherries$Girth, cherries$Volume, xlab = "Diámetro del tronco (pulgadas)", ylab = "Volumen del árbol")

# Calcular las rectas de regresión de los dos gráficos
regresion_altura <- lm(Height ~ Girth, data = cherries)
summary(regresion_altura)

regresion_volumen <- lm(Volume ~ Girth, data = cherries)
summary(regresion_volumen)

