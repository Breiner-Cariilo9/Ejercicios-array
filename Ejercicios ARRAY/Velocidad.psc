// EJERCICIO 13: CALCULAR EL PROMEDIO DE VELOCIDAD DE DOS CARROS

Algoritmo PromedioVelocidadCarros
    Definir marcas Como Caracter
    Definir distancias, tiempos, velocidades Como Real
    Definir i Como Entero
    Definir sumaVelocidades, promedioTotal Como Real
    
    // Dimensionar arrays para 2 carros
    Dimension marcas[2]
    Dimension distancias[2]
    Dimension tiempos[2]
    Dimension velocidades[2]
    
    sumaVelocidades <- 0
    
    Escribir "=== CÁLCULO DE VELOCIDAD PROMEDIO ==="
    Escribir "Fórmula: Velocidad = Distancia / Tiempo"
    Escribir ""
    
    // Solicitar datos para cada carro
    Para i <- 0 Hasta 1 Con Paso 1 Hacer
        Escribir "--- CARRO #", i+1, " ---"
        Escribir "Marca del carro: "
        Leer marcas[i]
        
        Repetir
            Escribir "Distancia recorrida por ", marcas[i], " (km): "
            Leer distancias[i]
            Si distancias[i] <= 0 Entonces
                Escribir "La distancia debe ser mayor que cero."
            FinSi
        Hasta Que distancias[i] > 0
        
        Repetir
            Escribir "Tiempo empleado por ", marcas[i], " (horas): "
            Leer tiempos[i]
            Si tiempos[i] <= 0 Entonces
                Escribir "El tiempo debe ser mayor que cero."
            FinSi
        Hasta Que tiempos[i] > 0
        
        // Calcular velocidad: distancia / tiempo
        velocidades[i] <- distancias[i] / tiempos[i]
        sumaVelocidades <- sumaVelocidades + velocidades[i]
        
        Escribir "Velocidad de ", marcas[i], ": ", velocidades[i], " km/h"
        Escribir ""
    FinPara
    
    // Calcular promedio total
    promedioTotal <- sumaVelocidades / 2
    
    // Mostrar resultados detallados
    Escribir "=== RESULTADOS DETALLADOS ==="
    Para i <- 0 Hasta 1 Con Paso 1 Hacer
        Escribir "Carro ", i+1, ": ", marcas[i]
        Escribir "  Distancia: ", distancias[i], " km"
        Escribir "  Tiempo: ", tiempos[i], " horas"
        Escribir "  Velocidad: ", velocidades[i], " km/h"
        Escribir ""
    FinPara
    
    Escribir "=== ANÁLISIS COMPARATIVO ==="
    Escribir "VELOCIDAD PROMEDIO ENTRE AMBOS CARROS: ", promedioTotal, " km/h"
    
    // Determinar cuál fue más rápido
    Si velocidades[0] > velocidades[1] Entonces
        Escribir "🏆 ", marcas[0], " fue más rápido (", velocidades[0], " km/h)"
        Escribir "Diferencia: ", velocidades[0] - velocidades[1], " km/h"
    SiNo
        Si velocidades[1] > velocidades[0] Entonces
            Escribir "🏆 ", marcas[1], " fue más rápido (", velocidades[1], " km/h)"
            Escribir "Diferencia: ", velocidades[1] - velocidades[0], " km/h"
        SiNo
            Escribir "🤝 Ambos carros tuvieron la misma velocidad"
        FinSi
    FinSi
    
    // Clasificación de velocidades
    Escribir ""
    Escribir "=== CLASIFICACIÓN ==="
    Para i <- 0 Hasta 1 Con Paso 1 Hacer
        Escribir marcas[i], ": "
        Si velocidades[i] < 60 Entonces
            Escribir "  🐌 Velocidad baja"
        SiNo
            Si velocidades[i] <= 120 Entonces
                Escribir "  🚗 Velocidad normal"
            SiNo
                Escribir "  🏎️ Velocidad alta"
            FinSi
        FinSi
    FinPara
    
FinAlgoritmo
