// Diseñar un algoritmo que imprima y sume la serie de números 3,6,9,12?,99.
Algoritmo SerieNumeros
	Definir numero, suma Como Entero
	suma <- 0
	// Imprimir y sumar la serie de números
	Para numero<-3 Hasta 99 Con Paso 3 Hacer
		Escribir 'Número:', numero
		suma <- suma+numero
	FinPara
	// Mostrar la suma total de la serie
	Escribir 'La suma total de la serie de números es:', suma
FinAlgoritmo
