Algoritmo Descuento_Compras
	Definir Producto Como Caracter
	Definir lista_productos, n_cantidad Como Entero
	Definir precio_Producto, decuento Como Real
	Dimensionar lista_productos[n_cantidad]
	Escribir "|Asignacion de descuentos de ciertos productos|";
	Escribir "¿Cuantos productos quieres añadir?"
	Leer n_cantidad
	Para n_cantidad <- 1 Hasta n_cantidad Con Paso 1 
		Escribir "Ingresa el nombre del producto N°" , n_cantidad;
		Leer Producto;
		Escribir "Ingrese el precio del producto N°" , n_cantidad;
		Leer precio_Producto
		Escribir "Asigna un descuento al producto N°" , n_cantidad , "[1% AL 100%]"
		Leer descuento 
		Escribir " ";
		Escribir "Producto: " , Producto;
		Escribir "Precio: " , precio_Producto;
		Escribir "Descuento " , descuento, "%";
		subtotal <- precio_Producto * (descuento/100)
		total <- precio_Producto - subtotal
		Escribir "Precio Final con descuento: " , total;
		Escribir " ";
		Escribir "-------------------------------------------------------------------------"
	FinPara
FinAlgoritmo	