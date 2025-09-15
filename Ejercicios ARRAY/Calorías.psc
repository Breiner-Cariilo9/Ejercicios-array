// EJERCICIO 12: SUMAR CALORÍAS CONSUMIDAS DURANTE EL DÍA Y TOTAL DE LA SEMANA

Algoritmo CaloriasSemana
    Definir calorias Como Real
    Definir dias Como Caracter
    Definir i, j Como Entero
    Definir totalSemanal, totalDiario Como Real
    Definir promedioSemanal Como Real
    
    // Array bidimensional: 7 días x máximo 10 comidas por día
    Dimension calorias[7,10]
    Dimension dias[7]
    
    // Inicializar días de la semana
    dias[0] <- "Lunes"
    dias[1] <- "Martes"
    dias[2] <- "Miércoles"
    dias[3] <- "Jueves"
    dias[4] <- "Viernes"
    dias[5] <- "Sábado"
    dias[6] <- "Domingo"
    
    totalSemanal <- 0
    
    Escribir "=== REGISTRO DE CALORÍAS SEMANALES ==="
    Escribir ""
    
    // Para cada día de la semana
    Para i <- 0 Hasta 6 Con Paso 1 Hacer
        totalDiario <- 0
        Escribir "--- ", dias[i], " ---"
        
        // Registrar comidas del día
        Para j <- 0 Hasta 9 Con Paso 1 Hacer
            Si j = 0 Entonces
                Escribir "Ingrese las calorías de cada comida (ingrese 0 para terminar el día)"
            FinSi
            
            Escribir "Comida #", j+1, " del ", dias[i], ": "
            Leer calorias[i,j]
            
            Si calorias[i,j] = 0 Entonces
                // Terminar el día
                j <- 10
            SiNo
                Si calorias[i,j] < 0 Entonces
                    Escribir "Las calorías no pueden ser negativas. Ingrese 0 para terminar."
                    calorias[i,j] <- 0
                    j <- 10
                SiNo
                    totalDiario <- totalDiario + calorias[i,j]
                FinSi
            FinSi
        FinPara
        
        totalSemanal <- totalSemanal + totalDiario
        Escribir "Total del ", dias[i], ": ", totalDiario, " calorías"
        Escribir ""
    FinPara
    
    // Calcular promedio semanal
    promedioSemanal <- totalSemanal / 7
    
    // Mostrar resumen semanal
    Escribir "=== RESUMEN SEMANAL DE CALORÍAS ==="
    Para i <- 0 Hasta 6 Con Paso 1 Hacer
        totalDiario <- 0
        Para j <- 0 Hasta 9 Con Paso 1 Hacer
            Si calorias[i,j] > 0 Entonces
                totalDiario <- totalDiario + calorias[i,j]
            FinSi
        FinPara
        Escribir dias[i], ": ", totalDiario, " calorías"
    FinPara
    
    Escribir ""
    Escribir "TOTAL SEMANAL: ", totalSemanal, " calorías"
    Escribir "PROMEDIO DIARIO: ", promedioSemanal, " calorías"
    
    // Recomendaciones
    Escribir ""
    Escribir "=== ANÁLISIS ==="
    Si promedioSemanal < 1500 Entonces
        Escribir "⚠️  Consumo calórico bajo. Considere aumentar la ingesta."
    SiNo
        Si promedioSemanal <= 2500 Entonces
            Escribir "✅ Consumo calórico dentro del rango normal."
        SiNo
            Escribir "⚠️  Consumo calórico alto. Considere reducir la ingesta."
        FinSi
    FinSi
    
FinAlgoritmo
