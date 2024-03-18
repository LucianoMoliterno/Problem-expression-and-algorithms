// Escribir un algoritmo que lea cuatro números y a continuación imprima el mayor de los cuatro.
Algoritmo MayorDeCuatroNumeros
	Definir num1, num2, num3, num4, mayor Como Entero
	// Leer los cuatro números
	Escribir 'Ingrese el primer número:'
	Leer num1
	Escribir 'Ingrese el segundo número:'
	Leer num2
	Escribir 'Ingrese el tercer número:'
	Leer num3
	Escribir 'Ingrese el cuarto número:'
	Leer num4
	// Determinar el mayor de los cuatro números
	mayor <- num1
	Si num2>mayor Entonces
		mayor <- num2
	FinSi
	Si num3>mayor Entonces
		mayor <- num3
	FinSi
	Si num4>mayor Entonces
		mayor <- num4
	FinSi
	// Imprimir el mayor de los cuatro números
	Escribir 'El mayor de los cuatro números es:', mayor
FinAlgoritmo
