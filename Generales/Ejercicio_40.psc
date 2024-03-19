//Se ingresan 100 pares de valores enteros NumA y NumB, los cuales no son iguales y obtener:
	//*La suma de los valores menores de cada par
	//*El promedio de los negativos
	//*El máximo valor de NumA y su orden de ingreso
	//*El mínimo valor de NumB y su orden de ingreso
//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularEstadisticasNumeros
	Definir NumA, NumB Como Entero
	Definir contador, suma_menores, cantidad_negativos, suma_negativos Como Entero
	Definir maximo_NumA, orden_max_NumA, minimo_NumB, orden_min_NumB Como Entero
	Definir promedio_negativos Como Real
	contador <- 0
	suma_menores <- 0
	cantidad_negativos <- 0
	suma_negativos <- 0
	maximo_NumA <- -999999
	orden_max_NumA <- 0 // Se inicializa con un valor muy pequeño para que cualquier valor sea mayor
	minimo_NumB <- 999999
	orden_min_NumB <- 0 // Se inicializa con un valor muy grande para que cualquier valor sea menor
	Repetir
		Escribir 'Ingrese el valor de NumA (par ', contador+1, '):'
		Leer NumA
		Escribir 'Ingrese el valor de NumB (par ', contador+1, '):'
		Leer NumB
		Si NumA<>NumB Entonces
			contador <- contador+1
			suma_menores <- suma_menores+Min[NumA,NumB]
			Si NumA<0 Entonces
				cantidad_negativos <- cantidad_negativos+1
				suma_negativos <- suma_negativos+NumA
			FinSi
			Si NumB<0 Entonces
				cantidad_negativos <- cantidad_negativos+1
				suma_negativos <- suma_negativos+NumB
			FinSi
			Si NumA>maximo_NumA Entonces
				maximo_NumA <- NumA
				orden_max_NumA <- contador
			FinSi
			Si NumB<minimo_NumB Entonces
				minimo_NumB <- NumB
				orden_min_NumB <- contador
			FinSi
		FinSi
	Hasta Que contador=100
	Si cantidad_negativos>0 Entonces
		promedio_negativos <- suma_negativos/cantidad_negativos
		Escribir 'Promedio de números negativos:', promedio_negativos
	SiNo
		Escribir 'No se ingresaron números negativos.'
	FinSi
	Escribir 'Suma de los valores menores de cada par:', suma_menores
	Escribir 'Máximo valor de NumA:', maximo_NumA, ' (ingresado en el par ', orden_max_NumA, ')'
	Escribir 'Mínimo valor de NumB:', minimo_NumB, ' (ingresado en el par ', orden_min_NumB, ')'
FinAlgoritmo
