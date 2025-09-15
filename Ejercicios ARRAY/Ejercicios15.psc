// EJERCICIO 15: CALCULAR TIEMPO TOTAL DE VIAJE SUMANDO TIEMPOS PARCIALES

Algoritmo TiempoViajeTotal
    Definir tramos Como Caracter
    Definir tiempos Como Real
    Definir i, cantidadTramos Como Entero
    Definir tiempoTotal Como Real
    Definir horasTotal, minutosTotal Como Entero
    
    Escribir "=== CÁLCULO DE TIEMPO TOTAL DE VIAJE ==="
    
    Repetir
        Escribir "¿Cuántos tramos tiene su viaje?: "
        Leer cantidadTramos
        Si cantidadTramos <= 0 Entonces
            Escribir "Debe tener al menos un tramo de viaje."
        FinSi
    Hasta Que cantidadTramos > 0
    
    // Dimensionar arrays
    Dimension tramos[cantidadTramos]
    Dimension tiempos[cantidadTramos]
    
    tiempoTotal <- 0
    
    // Solicitar datos para cada tramo
    Para i <- 0 Hasta cantidadTramos-1 Con Paso 1 Hacer
        Escribir ""
        Escribir "--- TRAMO #", i+1, " ---"
        Escribir "Descripción del tramo (ej: Casa-Trabajo): "
        Leer tramos[i]
        
        Repetir
            Escribir "Tiempo del tramo ", tramos[i], " (en horas): "
            Leer tiempos[i]
            Si tiempos[i] < 0 Entonces
                Escribir "El tiempo no puede ser negativo."
            FinSi
        Hasta Que tiempos[i] >= 0
        
        tiempoTotal <- tiempoTotal + tiempos[i]
        
        Escribir "Tiempo parcial: ", tiempos[i], " horas"
        Escribir "Tiempo acumulado: ", tiempoTotal, " horas"
    FinPara
    
    // Convertir tiempo total a horas y minutos
    horasTotal <- Trunc(tiempoTotal)
    minutosTotal <- Trunc((tiempoTotal - horasTotal) * 60)
    
    // Mostrar resumen detallado
    Escribir ""
    Escribir "=== RESUMEN DEL VIAJE ==="
    Para i <- 0 Hasta cantidadTramos-1 Con Paso 1 Hacer
        Escribir i+1, ". ", tramos[i], ": ", tiempos[i], " horas"
    FinPara
    
    Escribir ""
    Escribir "=== TIEMPO TOTAL ==="
    Escribir "Tiempo total en horas: ", tiempoTotal, " horas"
    Escribir "Tiempo total: ", horasTotal, " horas y ", minutosTotal, " minutos"
    
    // Calcular tiempo promedio por tramo
    Escribir "Tiempo promedio por tramo: ", tiempoTotal / cantidadTramos, " horas"
    
    // Encontrar el tramo más largo
    Definir tiempoMayor Como Real
    Definir tramoMasLargo Como Entero
    tiempoMayor <- tiempos[0]
    tramoMasLargo <- 0
    
    Para i <- 1 Hasta cantidadTramos-1 Con Paso 1 Hacer
        Si tiempos[i] > tiempoMayor Entonces
            tiempoMayor <- tiempos[i]
            tramoMasLargo <- i
        FinSi
    FinPara
    
    Escribir ""
    Escribir "=== ANÁLISIS DEL VIAJE ==="
    Escribir "🕐 TRAMO MÁS LARGO: ", tramos[tramoMasLargo]
    Escribir "    Duración: ", tiempoMayor, " horas"
    
    // Clasificar duración del viaje
    Si tiempoTotal < 2 Entonces
        Escribir "🚗 Viaje corto (menos de 2 horas)"
    SiNo
        Si tiempoTotal <= 8 Entonces
            Escribir "🛣️ Viaje mediano (2-8 horas)"
        SiNo
            Escribir "🗺️ Viaje largo (más de 8 horas)"
        FinSi
    FinSi
    
    // Sugerencias
    Escribir ""
    Escribir "=== RECOMENDACIONES ==="
    Si tiempoTotal > 4 Entonces
        Escribir "💡 Considere hacer descansos cada 2 horas"
    FinSi
    Si tiempoTotal > 8 Entonces
        Escribir "🏨 Considere pernoctar en el camino"
    FinSi
    
FinAlgoritmo
