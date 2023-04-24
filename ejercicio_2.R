# Definimos el precio por hora normal y por hora extra
precio_hora_normal <- 22
precio_hora_extra <- 40

# Pedimos al usuario que ingrese el número de horas trabajadas y el número de horas extras
horas_trabajadas <- as.numeric(readline("Ingresa el número de horas trabajadas: "))
horas_extra <- as.numeric(readline("Ingresa el número de horas extras: "))

# Calculamos el salario correspondiente a las horas trabajadas y las horas extras
salario_horas_trabajadas <- horas_trabajadas * precio_hora_normal
salario_horas_extra <- horas_extra * precio_hora_extra
salario_total <- salario_horas_trabajadas + salario_horas_extra

# Mostramos el resultado
cat("El salario correspondiente a las horas trabajadas es:", salario_horas_trabajadas, "euros.\n")
cat("El salario correspondiente a las horas extras es:", salario_horas_extra, "euros.\n")
cat("El salario total es:", salario_total, "euros.\n")

