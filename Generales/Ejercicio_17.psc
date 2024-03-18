// Se ingresan 100 números enteros no nulos (es decir que no llega el 0) y obtener el promedio de los positivos y la cantidad de negativos. 
// Mostrar ambos resultados con una leyenda aclaratoria.
Algoritmo CalcularPromedioYCantidadNegativos
	Definir contadorNegativos, sumaPositivos, cantidadPositivos, numero Como Entero
	contadorNegativos <- 0
	sumaPositivos <- 0
	cantidadPositivos <- 0
	// Leer 100 números enteros no nulos y realizar los cálculos
	Para i<-1 Hasta 100 Hacer
		Escribir 'Ingrese el número entero número', i, ':'
		Leer numero
		Si numero<0 Entonces
			contadorNegativos <- contadorNegativos+1
		SiNo
			sumaPositivos <- sumaPositivos+numero
			cantidadPositivos <- cantidadPositivos+1
		FinSi
	FinPara
	// Calcular el promedio de los números positivos
	Si cantidadPositivos>0 Entonces
		promedioPositivos <- sumaPositivos/cantidadPositivos
	SiNo
		promedioPositivos <- 0
		// Mostrar los resultados con leyendas aclaratorias
		Escribir 'El promedio de los números positivos es:', promedioPositivos // En caso de no haber números positivos
		Escribir 'La cantidad de números negativos es:', contadorNegativos
	FinSi
FinAlgoritmo
