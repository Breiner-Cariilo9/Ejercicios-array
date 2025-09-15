// EJERCICIO 14: SUMAR UNIDADES VENDIDAS DE TRES PRODUCTOS Y CALCULAR TOTAL A PAGAR

Algoritmo UnidadesProductos
    Definir productos Como Caracter
    Definir unidades Como Entero
    Definir precios, totalesProducto Como Real
    Definir i Como Entero
    Definir totalUnidades Como Entero
    Definir totalPagar Como Real
    
    // Dimensionar arrays para 3 productos
    Dimension productos[3]
    Dimension unidades[3]
    Dimension precios[3]
    Dimension totalesProducto[3]
    
    totalUnidades <- 0
    totalPagar <- 0
    
    Escribir "=== REGISTRO DE VENTAS DE PRODUCTOS ==="
    Escribir ""
    
    // Solicitar datos para cada producto
    Para i <- 0 Hasta 2 Con Paso 1 Hacer
        Escribir "--- PRODUCTO #", i+1, " ---"
        Escribir "Nombre del producto: "
        Leer productos[i]
        
        Repetir
            Escribir "Unidades vendidas de ", productos[i], ": "
            Leer unidades[i]
            Si unidades[i] < 0 Entonces
                Escribir "Las unidades no pueden ser negativas."
            FinSi
        Hasta Que unidades[i] >= 0
        
        Repetir
            Escribir "Precio unitario de ", productos[i], ": $"
            Leer precios[i]
            Si precios[i] <= 0 Entonces
                Escribir "El precio debe ser mayor que cero."
            FinSi
        Hasta Que precios[i] > 0
        
        // Calcular total por producto
        totalesProducto[i] <- unidades[i] * precios[i]
        
        // Acumular totales generales
        totalUnidades <- totalUnidades + unidades[i]
        totalPagar <- totalPagar + totalesProducto[i]
        
        Escribir "Total ", productos[i], ": ", unidades[i], " unidades x $", precios[i], " = $", totalesProducto[i]
        Escribir ""
    FinPara
    
    // Mostrar resumen detallado
    Escribir "=== RESUMEN DE VENTAS ==="
    Para i <- 0 Hasta 2 Con Paso 1 Hacer
        Escribir i+1, ". ", productos[i]
        Escribir "   Unidades: ", unidades[i]
        Escribir "   Precio unitario: $", precios[i]
        Escribir "   Subtotal: $", totalesProducto[i]
        Escribir ""
    FinPara
    
    Escribir "=== TOTALES GENERALES ==="
    Escribir "TOTAL UNIDADES VENDIDAS: ", totalUnidades
    Escribir "TOTAL A PAGAR: $", totalPagar
    
    Si totalUnidades > 0 Entonces
        Escribir "PRECIO PROMEDIO POR UNIDAD: $", totalPagar / totalUnidades
    FinSi
    
    // Encontrar el producto con mayor venta
    Definir mayorVenta Como Real
    Definir productoMasVendido Como Entero
    mayorVenta <- totalesProducto[0]
    productoMasVendido <- 0
    
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Si totalesProducto[i] > mayorVenta Entonces
            mayorVenta <- totalesProducto[i]
            productoMasVendido <- i
        FinSi
    FinPara
    
    Escribir ""
    Escribir "=== ANÁLISIS DE VENTAS ==="
    Escribir "🏆 PRODUCTO MÁS VENDIDO (en dinero): ", productos[productoMasVendido]
    Escribir "    Monto: $", mayorVenta
    
    // Encontrar el producto con más unidades
    Definir mayorUnidades Como Entero
    Definir productoMasUnidades Como Entero
    mayorUnidades <- unidades[0]
    productoMasUnidades <- 0
    
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Si unidades[i] > mayorUnidades Entonces
            mayorUnidades <- unidades[i]
            productoMasUnidades <- i
        FinSi
    FinPara
    
    Escribir "📦 PRODUCTO CON MÁS UNIDADES: ", productos[productoMasUnidades]
    Escribir "    Unidades: ", mayorUnidades
    
FinAlgoritmo
