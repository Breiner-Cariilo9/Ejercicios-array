Algoritmo sumar
	Definir listaNumeros, i , notas Como Entero
	Dimensionar listaNotas[3]
	
	Escribir "Calcular prpmedio de notas [3 MATERIAS] "
	
	Para i <- 1 Hasta 3 Con Paso 1 
		Escribir "Digita la nota de la materia ", i ; 
		Leer notas;
		listaNotas[i] <- notas
		suma <- suma + notas 
		promedio <- suma/3
	FinPara
	
	Escribir "El promedio de las tres notas es de :", promedio
	
	
FinAlgoritmo

