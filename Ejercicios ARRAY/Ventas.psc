// EJERCICIO 7: SUMAR VENTAS DIARIAS DE LA SEMANA

Algoritmo VentasSemanales
    Definir ventas Como Real
    Definir diasSemana Como Caracter
    Definir i Como Entero
    Definir totalVentas Como Real
    
    // Dimensionar arrays
    Dimension ventas[7]
    Dimension diasSemana[7]
    
    // Inicializar días de la semana
    diasSemana[0] <- "Lunes"
    diasSemana[1] <- "Martes"
    diasSemana[2] <- "Miércoles"
    diasSemana[3] <- "Jueves"
    diasSemana[4] <- "Viernes"
    diasSemana[5] <- "Sábado"
    diasSemana[6] <- "Domingo"
    
    totalVentas <- 0
    
    Escribir "=== REGISTRO DE VENTAS SEMANALES ==="
    Escribir ""
    
    // Solicitar ventas para cada día
    Para i <- 0 Hasta 6 Con Paso 1 Hacer
        Repetir
            Escribir "Ingrese las ventas del ", diasSemana[i], ": $"
            Leer ventas[i]
            Si ventas[i] < 0 Entonces
                Escribir "Las ventas no pueden ser negativas."
            FinSi
        Hasta Que ventas[i] >= 0
        
        totalVentas <- totalVentas + ventas[i]
    FinPara
    
    // Mostrar resultados
    Escribir ""
    Escribir "=== REPORTE DE VENTAS SEMANALES ==="
    Para i <- 0 Hasta 6 Con Paso 1 Hacer
        Escribir diasSemana[i], ": $", ventas[i]
    FinPara
    
    Escribir ""
    Escribir "TOTAL DE VENTAS DE LA SEMANA: $", totalVentas
    Escribir "PROMEDIO DIARIO: $", totalVentas/7
    
FinAlgoritmo
