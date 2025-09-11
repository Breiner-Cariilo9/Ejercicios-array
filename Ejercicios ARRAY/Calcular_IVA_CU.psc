Algoritmo Calcular_IVA_CU
	Definir  precios Como Real
	Definir  Lista_De_Productos, N_cantidad Como Entero
	Definir nombre_producto Como Caracter
	Escribir "**Calcular total de un producto [SUBTOTAL] y [TOTAL CON IVA]**"
	Escribir "Nombre del producto que quiere añadir "
	Leer nombre_producto;
	Escribir "Que cantidad de ", nombre_producto, " que desea llevar. "
	Leer N_cantidad;
	Dimensionar Lista_De_Productos[N_cantidad]
	
	para N_cantidad <- 1 Hasta N_cantidad Con Paso 1 
		Escribir "Asigna un precio a el precio del producto ", nombre_producto , ", producto N", N_cantidad;
		Leer precio;
		Escribir "El subtotal del producto añadido, ", "[", nombre_producto, "]" , " es de: $", precio;
		Escribir " "
		Lista_De_Productos[N_cantidad] <- precio;
		suma <- suma + precio
		subtotal <- suma
		iva <- subtotal * 0.19 
		total <- iva + subtotal
	FinPara

	Escribir "El subtotal [SIN IVA] de su compra ", nombre_producto, " es de $", subtotal;
	Escribir "El total su compra es de ", total
	
FinAlgoritmo
