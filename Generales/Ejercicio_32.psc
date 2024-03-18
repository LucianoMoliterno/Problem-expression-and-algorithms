// Ingresar una serie indeterminada de números enteros. 
// Cuando se ingrese cero (0), se detendrá el ingreso de números y se deberá informar el promedio de todos los números ingresados, 
// cuál fue el mayor valor de la serie y el menor con su posición.
Algoritmo CalcularPromedioMayorMenor
	Definir numero, suma, cantidad, mayor, menor, posicionMenor Como Entero
	Definir promedio Como Real
	// Inicializar variables
	suma <- 0
	cantidad <- 0
	mayor <- -9999999
	menor <- 9999999 // Inicializar el mayor con un valor muy pequeño
	// Ingresar una serie indeterminada de números
	Escribir 'Ingrese una serie de números enteros (ingrese 0 para terminar):' // Inicializar el menor con un valor muy grande
	Leer numero
	Mientras numero<>0 Hacer
		// Actualizar la suma y la cantidad de números ingresados
		suma <- suma+numero
		cantidad <- cantidad+1
		// Verificar si el número es mayor que el valor actual de 'mayor'
		Si numero>mayor Entonces
			mayor <- numero
		FinSi
		// Verificar si el número es menor que el valor actual de 'menor'
		Si numero<menor Entonces
			menor <- numero
			posicionMenor <- cantidad
		FinSi // Almacenar la posición del menor número
		// Leer el próximo número
		Escribir 'Ingrese otro número (ingrese 0 para terminar):'
		Leer numero
	FinMientras
	// Calcular el promedio de los números ingresados
	Si cantidad>0 Entonces
		promedio <- suma/cantidad
	SiNo
		promedio <- 0
	FinSi // Evitar división por cero si no se ingresaron números
	// Mostrar los resultados
	Escribir 'Promedio de los números ingresados:', promedio
	Escribir 'El mayor valor de la serie es:', mayor
	Escribir 'El menor valor de la serie es:', menor, 'en la posición:', posicionMenor
FinAlgoritmo
