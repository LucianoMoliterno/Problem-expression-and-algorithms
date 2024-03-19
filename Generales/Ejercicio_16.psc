// Ingresar un número entero y determinar si el mismo es menor 10, si está comprendido entre 10 y 100 o si el valor ingresado es mayor que 100.
// En los tres casos se debe mostrar una leyenda y el valor ingresado.
Algoritmo DeterminarRango
	Definir numero Como Entero
	// Leer el número entero
	Escribir 'Ingrese un número entero:'
	Leer numero
	// Determinar en qué rango se encuentra el número
	Si numero<10 Entonces
		Escribir 'El número ingresado es menor que 10 y su valor es:', numero
	SiNo
		Si numero>=10 Y numero<=100 Entonces
			Escribir 'El número ingresado está comprendido entre 10 y 100 y su valor es:', numero
		SiNo
			Escribir 'El número ingresado es mayor que 100 y su valor es:', numero
		FinSi
	FinSi
FinAlgoritmo
