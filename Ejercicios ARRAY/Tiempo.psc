// EJERCICIO 10: DETERMINAR COSTO TOTAL EN FUNCIÓN DE TIEMPO Y TARIFA POR HORA

Algoritmo CostoTiempo
    Definir servicios Como Caracter
    Definir tiempos Como Real
    Definir tarifas Como Real
    Definir costosTotal Como Real
    Definir i, cantidadServicios Como Entero
    Definir totalCosto, totalHoras Como Real
    
    Escribir "=== CÁLCULO DE COSTO POR SERVICIOS ==="
    
    Repetir
        Escribir "¿Cuántos servicios desea calcular?: "
        Leer cantidadServicios
        Si cantidadServicios <= 0 Entonces
            Escribir "Debe ingresar al menos un servicio."
        FinSi
    Hasta Que cantidadServicios > 0
    
    // Dimensionar arrays
    Dimension servicios[cantidadServicios]
    Dimension tiempos[cantidadServicios]
    Dimension tarifas[cantidadServicios]
    Dimension costosTotal[cantidadServicios]
    
    totalCosto <- 0
    totalHoras <- 0
    
    // Solicitar datos para cada servicio
    Para i <- 0 Hasta cantidadServicios-1 Con Paso 1 Hacer
        Escribir ""
        Escribir "--- SERVICIO #", i+1, " ---"
        Escribir "Nombre del servicio: "
        Leer servicios[i]
        
        Repetir
            Escribir "Tiempo utilizado (horas): "
            Leer tiempos[i]
            Si tiempos[i] <= 0 Entonces
                Escribir "El tiempo debe ser mayor que cero."
            FinSi
        Hasta Que tiempos[i] > 0
        
        Repetir
            Escribir "Tarifa por hora: $"
            Leer tarifas[i]
            Si tarifas[i] <= 0 Entonces
                Escribir "La tarifa debe ser mayor que cero."
            FinSi
        Hasta Que tarifas[i] > 0
        
        // Calcular costo total para este servicio
        costosTotal[i] <- tiempos[i] * tarifas[i]
        
        // Acumular totales
        totalCosto <- totalCosto + costosTotal[i]
        totalHoras <- totalHoras + tiempos[i]
        
        Escribir "Costo del ", servicios[i], ": $", costosTotal[i]
    FinPara
    
    // Mostrar resultados detallados
    Escribir ""
    Escribir "=== DETALLE DE COSTOS ==="
    Para i <- 0 Hasta cantidadServicios-1 Con Paso 1 Hacer
        Escribir i+1, ". ", servicios[i]
        Escribir "   Tiempo: ", tiempos[i], " horas"
        Escribir "   Tarifa: $", tarifas[i], " por hora"
        Escribir "   Subtotal: $", costosTotal[i]
        Escribir ""
    FinPara
    
    Escribir "=== RESUMEN GENERAL ==="
    Escribir "Total de horas: ", totalHoras
    Escribir "COSTO TOTAL: $", totalCosto
    Escribir "Tarifa promedio por hora: $", totalCosto/totalHoras
    
    // Encontrar el servicio más caro
    Definir mayorCosto Como Real
    Definir posicionMayor Como Entero
    mayorCosto <- costosTotal[0]
    posicionMayor <- 0
    
    Para i <- 1 Hasta cantidadServicios-1 Con Paso 1 Hacer
        Si costosTotal[i] > mayorCosto Entonces
            mayorCosto <- costosTotal[i]
            posicionMayor <- i
        FinSi
    FinPara
    
    Escribir ""
    Escribir "SERVICIO MÁS COSTOSO: ", servicios[posicionMayor], " - $", mayorCosto
    
FinAlgoritmo
