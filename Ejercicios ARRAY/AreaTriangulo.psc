Algoritmo AreaTriangulo
	Definir CuantasVeces, cantidad Como Entero
	Definir base, altura Como Real
	Dimensionar CuantasVeces[cantidad]
	Escribir "**Calcular area de un triangulo**"
	Escribir "A cuantos triangulos desea sacarle el area?"
	Leer cantidad
	
	Para cantidad <- 1 Hasta cantidad Con Paso 1
		Escribir "Coloca la base del triangulo ", cantidad;
		leer base
		Escribir "Ahora digita altura del triantulo ", cantidad;
		Leer altura
		Proceso1 <- base * altura
		FinProceso1 <- Proceso1 / 2
		Escribir "----------------------------------------"
		Escribir "El area del triangulo ", cantidad, " es ", FinProceso1;
		Escribir "----------------------------------------"
	FinPara
	
	
FinAlgoritmo
