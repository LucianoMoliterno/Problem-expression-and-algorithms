// Ingresar dos valores en distintas variables y determinar cuál de ellos es el mayor, colocar una leyenda que indique cuál es el mayor y qué valor tiene.
Algoritmo DeterminarMayor
	Definir num1, num2 Como Entero
	// Leer los dos valores
	Escribir 'Ingrese el primer valor:'
	Leer num1
	Escribir 'Ingrese el segundo valor:'
	Leer num2
	// Determinar cuál es el mayor
	Si num1>num2 Entonces
		Escribir 'El primer valor ingresado es mayor y su valor es:', num1
	SiNo
		Si num2>num1 Entonces
			Escribir 'El segundo valor ingresado es mayor y su valor es:', num2
		SiNo
			Escribir 'Los dos valores son iguales.'
		FinSi
	FinSi
FinAlgoritmo
