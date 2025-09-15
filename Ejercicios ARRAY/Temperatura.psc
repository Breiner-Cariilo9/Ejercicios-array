// EJERCICIO 6: CONVERTIR TEMPERATURA DE CELSIUS A FAHRENHEIT

Algoritmo ConversionTemperatura
    Definir celsius, fahrenheit Como Real
    Definir temperaturasC, temperaturasF Como Real
    Definir i, cantidad Como Entero
    
    Escribir "=== CONVERSIÓN DE CELSIUS A FAHRENHEIT ==="
    
    Repetir
        Escribir "¿Cuántas temperaturas desea convertir?: "
        Leer cantidad
        Si cantidad <= 0 Entonces
            Escribir "Debe ingresar al menos una temperatura."
        FinSi
    Hasta Que cantidad > 0
    
    // Dimensionar los arrays
    Dimension temperaturasC[cantidad]
    Dimension temperaturasF[cantidad]
    
    // Solicitar temperaturas en Celsius
    Para i <- 0 Hasta cantidad-1 Con Paso 1 Hacer
        Escribir "Ingrese la temperatura #", i+1, " en Celsius: "
        Leer temperaturasC[i]
        
        // Convertir a Fahrenheit: F = (C * 9/5) + 32
        temperaturasF[i] <- (temperaturasC[i] * 9/5) + 32
    FinPara
    
    // Mostrar resultados
    Escribir ""
    Escribir "=== RESULTADOS DE CONVERSIÓN ==="
    Para i <- 0 Hasta cantidad-1 Con Paso 1 Hacer
        Escribir "Temperatura #", i+1, ": ", temperaturasC[i], "°C = ", temperaturasF[i], "°F"
    FinPara
    
FinAlgoritmo
