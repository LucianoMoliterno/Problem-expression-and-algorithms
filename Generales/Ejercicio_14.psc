//Ingresar un número entero y determinar si es positivo, negativo o cero, mostrar una leyenda en cada caso.
Algoritmo DeterminarPositivoNegativoCero
	Definir numero Como Entero
	// Leer el número entero
	Escribir 'Ingrese un número entero:'
	Leer numero
	// Determinar si el número es positivo, negativo o cero
	Si numero>0 Entonces
		Escribir 'El número ingresado es positivo.'
	SiNo
		Si numero<0 Entonces
			Escribir 'El número ingresado es negativo.'
		SiNo
			Escribir 'El número ingresado es cero.'
		FinSi
	FinSi
FinAlgoritmo
