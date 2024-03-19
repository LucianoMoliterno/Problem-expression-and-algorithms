// Calcular la longitud de la circunferencia y la superficie de un círculo, ingresando un número entero, que será el radio. 
// Mostrar los resultados.
Algoritmo CircunferenciaYAreaCirculo
	Definir radio, circunferencia, area Como Real
	// Leer el radio del círculo
	Escribir 'Ingrese el radio del círculo:'
	Leer radio
	// Calcular la longitud de la circunferencia
	circunferencia <- 2*pi*radio
	// Calcular el área del círculo
	area <- pi*radio*radio
	// Mostrar los resultados
	Escribir 'La longitud de la circunferencia es:', circunferencia
	Escribir 'El área del círculo es:', area
FinAlgoritmo
