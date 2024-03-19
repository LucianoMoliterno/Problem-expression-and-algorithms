// Diseñar un algoritmo, en el cual se ingresa la temperatura en grados Celsius, y un código (1 ó 2), 
// si el código es 1, lo convierte en grados Fahrenheit [ f=(9/5)* C +32], 
// en caso de ser el código 2, lo convierte en grados Kelvin [k=C+273].
// Se debe mostrar el resultado seleccionado.
Algoritmo ConvertirTemperatura
	Definir temperatura, codigo Como Entero
	Definir temperaturaConvertida Como Real
	// Leer la temperatura en grados Celsius
	Escribir 'Ingrese la temperatura en grados Celsius:'
	Leer temperatura
	// Leer el código (1 para Fahrenheit, 2 para Kelvin)
	Escribir 'Ingrese el código (1 para Fahrenheit, 2 para Kelvin):'
	Leer codigo
	// Realizar la conversión según el código ingresado
	Si codigo=1 Entonces
		// Convertir a grados Fahrenheit
		temperaturaConvertida <- (9/5)*temperatura+32
		Escribir 'La temperatura en grados Fahrenheit es:', temperaturaConvertida
	SiNo
		Si codigo=2 Entonces
			// Convertir a grados Kelvin
			temperaturaConvertida <- temperatura+273
			Escribir 'La temperatura en grados Kelvin es:', temperaturaConvertida
		SiNo
			Escribir 'Código no válido. Ingrese 1 para Fahrenheit o 2 para Kelvin.'
		FinSi
	FinSi
FinAlgoritmo
