// EJERCICIO 17: CALCULAR COSTO DE IMPRESIÓN BASADO EN PÁGINAS Y PRECIO POR PÁGINA

Algoritmo CostoImpresion
    Definir documentos Como Caracter
    Definir paginas Como Entero
    Definir preciosPorPagina Como Real
    Definir costosDocumento Como Real
    Definir i, cantidadDocumentos Como Entero
    Definir totalPaginas Como Entero
    Definir costoTotal Como Real
    
    Escribir "=== CALCULADORA DE COSTOS DE IMPRESIÓN ==="
    
    Repetir
        Escribir "¿Cuántos documentos desea imprimir?: "
        Leer cantidadDocumentos
        Si cantidadDocumentos <= 0 Entonces
            Escribir "Debe imprimir al menos un documento."
        FinSi
    Hasta Que cantidadDocumentos > 0
    
    // Dimensionar arrays
    Dimension documentos[cantidadDocumentos]
    Dimension paginas[cantidadDocumentos]
    Dimension preciosPorPagina[cantidadDocumentos]
    Dimension costosDocumento[cantidadDocumentos]
    
    totalPaginas <- 0
    costoTotal <- 0
    
    // Solicitar datos para cada documento
    Para i <- 0 Hasta cantidadDocumentos-1 Con Paso 1 Hacer
        Escribir ""
        Escribir "--- DOCUMENTO #", i+1, " ---"
        Escribir "Nombre del documento: "
        Leer documentos[i]
        
        Repetir
            Escribir "Número de páginas de ", documentos[i], ": "
            Leer paginas[i]
            Si paginas[i] <= 0 Entonces
                Escribir "El número de páginas debe ser mayor que cero."
            FinSi
        Hasta Que paginas[i] > 0
        
        Repetir
            Escribir "Precio por página para ", documentos[i], " (incluye tipo de papel, color, etc.): $"
            Leer preciosPorPagina[i]
            Si preciosPorPagina[i] <= 0 Entonces
                Escribir "El precio por página debe ser mayor que cero."
            FinSi
        Hasta Que preciosPorPagina[i] > 0
        
        // Calcular costo del documento
        costosDocumento[i] <- paginas[i] * preciosPorPagina[i]
        
        // Acumular totales
        totalPaginas <- totalPaginas + paginas[i]
        costoTotal <- costoTotal + costosDocumento[i]
        
        Escribir "Costo de ", documentos[i], ": ", paginas[i], " páginas x $", preciosPorPagina[i], " = $", costosDocumento[i]
    FinPara
    
    // Mostrar cotización detallada
    Escribir ""
    Escribir "=== COTIZACIÓN DE IMPRESIÓN ==="
    Escribir "============================================"
    Para i <- 0 Hasta cantidadDocumentos-1 Con Paso 1 Hacer
        Escribir i+1, ". ", documentos[i]
        Escribir "   Páginas: ", paginas[i]
        Escribir "   Precio por página: $", preciosPorPagina[i]
        
        // Clasificar tipo de impresión por precio
        Si preciosPorPagina[i] <= 100 Entonces
            Escribir "   Tipo: Blanco y negro básico"
        SiNo
            Si preciosPorPagina[i] <= 300 Entonces
                Escribir "   Tipo: Blanco y negro premium"
            SiNo
                Si preciosPorPagina[i] <= 500 Entonces
                    Escribir "   Tipo: Color básico"
                SiNo
                    Escribir "   Tipo: Color premium/Fotográfico"
                FinSi
            FinSi
        FinSi
        
        Escribir "   Subtotal: $", costosDocumento[i]
        Escribir ""
    FinPara
    
    Escribir "============================================"
    Escribir "TOTAL DE PÁGINAS: ", totalPaginas
    Escribir "COSTO TOTAL: $", costoTotal
    
    // Calcular precio promedio por página
    Definir promedioPorPagina Como Real
    promedioPorPagina <- costoTotal / totalPaginas
    Escribir "PRECIO PROMEDIO POR PÁGINA: $", promedioPorPagina
    
    // Aplicar descuentos por volumen
    Definir descuento, costoConDescuento Como Real
    descuento <- 0
    
    Si totalPaginas >= 1000 Entonces
        descuento <- costoTotal * 0.15  // 15% descuento
        Escribir ""
        Escribir "🎉 DESCUENTO POR VOLUMEN (1000+ páginas): 15%"
    SiNo
        Si totalPaginas >= 500 Entonces
            descuento <- costoTotal * 0.10  // 10% descuento
            Escribir ""
            Escribir "🎉 DESCUENTO POR VOLUMEN (500+ páginas): 10%"
        SiNo
            Si totalPaginas >= 100 Entonces
                descuento <- costoTotal * 0.05  // 5% descuento
                Escribir ""
                Escribir "🎉 DESCUENTO POR VOLUMEN (100+ páginas): 5%"
            FinSi
        FinSi
    FinSi
    
    costoConDescuento <- costoTotal - descuento
    
    Si descuento > 0 Entonces
        Escribir "Descuento aplicado: -$", descuento
        Escribir "TOTAL CON DESCUENTO: $", costoConDescuento
    FinSi
    
    // Análisis de la impresión
    Escribir ""
    Escribir "=== ANÁLISIS DEL TRABAJO ==="
    
    // Encontrar el documento más costoso
    Definir mayorCosto Como Real
    Definir documentoMasCostoso Como Entero
    mayorCosto <- costosDocumento[0]
    documentoMasCostoso <- 0
    
    Para i <- 1 Hasta cantidadDocumentos-1 Con Paso 1 Hacer
        Si costosDocumento[i] > mayorCosto Entonces
            mayorCosto <- costosDocumento[i]
            documentoMasCostoso <- i
        FinSi
    FinPara
    
    Escribir "📄 DOCUMENTO MÁS COSTOSO: ", documentos[documentoMasCostoso]
    Escribir "    Costo: $", mayorCosto, " (", (mayorCosto/costoTotal)*100, "% del total)"
    
    // Tiempo estimado de impresión (asumiendo 1 página por minuto)
    Escribir "⏱️ TIEMPO ESTIMADO DE IMPRESIÓN: ", totalPaginas, " minutos (", totalPaginas/60, " horas)"
    
    // Recomendaciones
    Escribir ""
    Escribir "=== RECOMENDACIONES ==="
    Si promedioPorPagina > 400 Entonces
        Escribir "💡 Precio alto por página. Considere imprimir en blanco y negro para ahorrar."
    FinSi
    
    Si totalPaginas > 500 Entonces
        Escribir "📦 Trabajo grande. Considere dividir en lotes para mejor manejo."
    FinSi
    
    Escribir "💾 Recuerde revisar los documentos antes de imprimir para evitar reimpresos."
    
FinAlgoritmo
