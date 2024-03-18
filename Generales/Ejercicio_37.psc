// Se ingresan 100 valores enteros no nulos y se necesita calcular:
// *Si el valor es menor a 100, calcular un 10 MOD .
// *Si el valor es mayor a 1000, calcular el 20 MOD .
// *Con otro valor, calcular el 15 MOD .
// Al finalizar el proceso se debe mostrar la suma de los porcentajes calculados
Algoritmo CalcularPorcentajes
	Definir valor Como Entero
	Definir porcentaje Como Real
	Definir suma_porcentajes Como Real
	suma_porcentajes <- 0
	Para i<-1 Hasta 100 Con Paso 1 Hacer
		Escribir 'Ingrese un valor entero no nulo:'
		Leer valor
		Si valor<100 Entonces
			porcentaje <- valor*0.1
		SiNo
			Si valor>1000 Entonces
				porcentaje <- valor*0.2
			SiNo
				porcentaje <- valor*0.15
			FinSi
		FinSi
		suma_porcentajes <- suma_porcentajes+porcentaje
	FinPara
	Escribir 'La suma de los porcentajes calculados es:', suma_porcentajes
FinAlgoritmo
