// EJERCICIO 8: RESTAR GASTOS DE INGRESOS PARA CALCULAR GANANCIA NETA

Algoritmo GastosGanancias
    Definir ingresos, gastos, gananciasNetas Como Real
    Definir meses Como Caracter
    Definir i, cantidadMeses Como Entero
    Definir totalIngresos, totalGastos, totalGanancias Como Real
    
    Escribir "=== CÁLCULO DE GANANCIAS NETAS ==="
    
    Repetir
        Escribir "¿Para cuántos meses desea calcular las ganancias?: "
        Leer cantidadMeses
        Si cantidadMeses <= 0 Entonces
            Escribir "Debe ingresar al menos un mes."
        FinSi
    Hasta Que cantidadMeses > 0
    
    // Dimensionar arrays
    Dimension ingresos[cantidadMeses]
    Dimension gastos[cantidadMeses]
    Dimension gananciasNetas[cantidadMeses]
    Dimension meses[cantidadMeses]
    
    totalIngresos <- 0
    totalGastos <- 0
    totalGanancias <- 0
    
    // Solicitar datos para cada mes
    Para i <- 0 Hasta cantidadMeses-1 Con Paso 1 Hacer
        Escribir ""
        Escribir "--- MES #", i+1, " ---"
        Escribir "Ingrese el nombre del mes: "
        Leer meses[i]
        
        Repetir
            Escribir "Ingresos del ", meses[i], ": $"
            Leer ingresos[i]
            Si ingresos[i] < 0 Entonces
                Escribir "Los ingresos no pueden ser negativos."
            FinSi
        Hasta Que ingresos[i] >= 0
        
        Repetir
            Escribir "Gastos del ", meses[i], ": $"
            Leer gastos[i]
            Si gastos[i] < 0 Entonces
                Escribir "Los gastos no pueden ser negativos."
            FinSi
        Hasta Que gastos[i] >= 0
        
        // Calcular ganancia neta
        gananciasNetas[i] <- ingresos[i] - gastos[i]
        
        // Acumular totales
        totalIngresos <- totalIngresos + ingresos[i]
        totalGastos <- totalGastos + gastos[i]
        totalGanancias <- totalGanancias + gananciasNetas[i]
        
        Escribir "Ganancia neta del ", meses[i], ": $", gananciasNetas[i]
    FinPara
    
    // Mostrar resultados finales
    Escribir ""
    Escribir "=== REPORTE FINANCIERO ==="
    Para i <- 0 Hasta cantidadMeses-1 Con Paso 1 Hacer
        Escribir meses[i], ": Ingresos $", ingresos[i], " - Gastos $", gastos[i], " = Ganancia $", gananciasNetas[i]
    FinPara
    
    Escribir ""
    Escribir "TOTALES:"
    Escribir "Total Ingresos: $", totalIngresos
    Escribir "Total Gastos: $", totalGastos
    Escribir "GANANCIA NETA TOTAL: $", totalGanancias
    
FinAlgoritmo
