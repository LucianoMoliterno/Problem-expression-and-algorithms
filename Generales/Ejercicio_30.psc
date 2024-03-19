// Ingresar una serie indeterminada de números. Cuando se ingrese cero (0), 
// se detendrá el ingreso de números y se deberá informar el promedio de todos los números ingresados y cuál fue el mayor valor de la serie.
Algoritmo CalcularPromedioYMaximo
	Definir numero, suma, contador, promedio, maximo Como Real
	// Inicializar variables
	suma <- 0
	contador <- 0
	maximo <- -Inf
	// Ingresar números hasta que se ingrese cero
	Escribir 'Ingrese una serie de números. Ingrese 0 para terminar.' // Inicializar el máximo con un valor muy pequeño
	Leer numero
	Mientras numero<>0 Hacer
		// Actualizar la suma y el contador
		suma <- suma+numero
		contador <- contador+1
		// Actualizar el máximo si es necesario
		Si numero>maximo Entonces
			maximo <- numero
		FinSi
		// Leer el siguiente número
		Leer numero
	FinMientras
	// Calcular el promedio
	Si contador>0 Entonces
		promedio <- suma/contador
	SiNo
		promedio <- 0
	FinSi // Evitar división por cero si no se ingresaron números
	// Mostrar resultados
	Escribir 'El promedio de los números ingresados es:', promedio
	Escribir 'El mayor valor de la serie es:', maximo
FinAlgoritmo
