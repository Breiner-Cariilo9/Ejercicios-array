// EJERCICIO 11: CALCULAR EL ÍNDICE DE MASA CORPORAL (IMC) DE DOS PERSONAS

Algoritmo CalculoIMC
    Definir nombres Como Caracter
    Definir pesos, alturas, imcs Como Real
    Definir clasificaciones Como Caracter
    Definir i Como Entero
    
    // Dimensionar arrays para 2 personas
    Dimension nombres[2]
    Dimension pesos[2]
    Dimension alturas[2]
    Dimension imcs[2]
    Dimension clasificaciones[2]
    
    Escribir "=== CÁLCULO DE ÍNDICE DE MASA CORPORAL (IMC) ==="
    Escribir ""
    
    // Solicitar datos para cada persona
    Para i <- 0 Hasta 1 Con Paso 1 Hacer
        Escribir "--- PERSONA #", i+1, " ---"
        Escribir "Ingrese el nombre: "
        Leer nombres[i]
        
        Repetir
            Escribir "Peso de ", nombres[i], " (kg): "
            Leer pesos[i]
            Si pesos[i] <= 0 Entonces
                Escribir "El peso debe ser mayor que cero."
            FinSi
        Hasta Que pesos[i] > 0
        
        Repetir
            Escribir "Altura de ", nombres[i], " (metros): "
            Leer alturas[i]
            Si alturas[i] <= 0 O alturas[i] > 3 Entonces
                Escribir "La altura debe estar entre 0 y 3 metros."
            FinSi
        Hasta Que alturas[i] > 0 Y alturas[i] <= 3
        
        // Calcular IMC: peso / (altura^2)
        imcs[i] <- pesos[i] / (alturas[i] * alturas[i])
        
        // Clasificar según IMC
        Si imcs[i] < 18.5 Entonces
            clasificaciones[i] <- "Bajo peso"
        SiNo
            Si imcs[i] < 25 Entonces
                clasificaciones[i] <- "Peso normal"
            SiNo
                Si imcs[i] < 30 Entonces
                    clasificaciones[i] <- "Sobrepeso"
                SiNo
                    clasificaciones[i] <- "Obesidad"
                FinSi
            FinSi
        FinSi
        
        Escribir "IMC de ", nombres[i], ": ", imcs[i], " (", clasificaciones[i], ")"
        Escribir ""
    FinPara
    
    // Mostrar resultados comparativos
    Escribir "=== COMPARACIÓN DE RESULTADOS ==="
    Para i <- 0 Hasta 1 Con Paso 1 Hacer
        Escribir nombres[i], ":"
        Escribir "  Peso: ", pesos[i], " kg"
        Escribir "  Altura: ", alturas[i], " m"
        Escribir "  IMC: ", imcs[i]
        Escribir "  Clasificación: ", clasificaciones[i]
        Escribir ""
    FinPara
    
    // Comparar IMCs
    Si imcs[0] > imcs[1] Entonces
        Escribir nombres[0], " tiene un IMC mayor (", imcs[0], ")"
    SiNo
        Si imcs[1] > imcs[0] Entonces
            Escribir nombres[1], " tiene un IMC mayor (", imcs[1], ")"
        SiNo
            Escribir "Ambas personas tienen el mismo IMC"
        FinSi
    FinSi
    
FinAlgoritmo
