// EJERCICIO 9: CALCULAR LA EDAD DE 3 PERSONAS

Algoritmo CalculoEdades
    Definir nombres Como Caracter
    Definir fechasNacimiento Como Entero
    Definir edades Como Entero
    Definir i, anoActual Como Entero
    Definir sumaEdades Como Entero
    
    // Dimensionar arrays para 3 personas
    Dimension nombres[3]
    Dimension fechasNacimiento[3]
    Dimension edades[3]
    
    anoActual <- 2024
    sumaEdades <- 0
    
    Escribir "=== CÁLCULO DE EDADES ==="
    Escribir "Año actual: ", anoActual
    Escribir ""
    
    // Solicitar datos de cada persona
    Para i <- 0 Hasta 2 Con Paso 1 Hacer
        Escribir "--- PERSONA #", i+1, " ---"
        Escribir "Ingrese el nombre: "
        Leer nombres[i]
        
        Repetir
            Escribir "Año de nacimiento de ", nombres[i], ": "
            Leer fechasNacimiento[i]
            Si fechasNacimiento[i] > anoActual O fechasNacimiento[i] < 1900 Entonces
                Escribir "Año de nacimiento inválido. Debe estar entre 1900 y ", anoActual
            FinSi
        Hasta Que fechasNacimiento[i] <= anoActual Y fechasNacimiento[i] >= 1900
        
        // Calcular edad
        edades[i] <- anoActual - fechasNacimiento[i]
        sumaEdades <- sumaEdades + edades[i]
        
        Escribir nombres[i], " tiene ", edades[i], " años"
        Escribir ""
    FinPara
    
    // Mostrar resultados
    Escribir "=== RESUMEN DE EDADES ==="
    Para i <- 0 Hasta 2 Con Paso 1 Hacer
        Escribir i+1, ". ", nombres[i], " (", fechasNacimiento[i], ") - ", edades[i], " años"
    FinPara
    
    Escribir ""
    Escribir "SUMA TOTAL DE EDADES: ", sumaEdades, " años"
    Escribir "PROMEDIO DE EDAD: ", sumaEdades/3, " años"
    
    // Encontrar la persona mayor y menor
    Definir mayor, menor, posMayor, posMenor Como Entero
    mayor <- edades[0]
    menor <- edades[0]
    posMayor <- 0
    posMenor <- 0
    
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Si edades[i] > mayor Entonces
            mayor <- edades[i]
            posMayor <- i
        FinSi
        Si edades[i] < menor Entonces
            menor <- edades[i]
            posMenor <- i
        FinSi
    FinPara
    
    Escribir ""
    Escribir "PERSONA MAYOR: ", nombres[posMayor], " con ", mayor, " años"
    Escribir "PERSONA MENOR: ", nombres[posMenor], " con ", menor, " años"
    
FinAlgoritmo
