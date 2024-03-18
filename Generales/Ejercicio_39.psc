//Se ingresa un par de valores enteros NumA y NumB, los cuales no son iguales y obtener:
	//*La cantidad de positivos
	//*El promedio de los negativos
	//*La suma de todos los valores de NumA positivos con valores NumB negativos.
//El fin de ingreso de datos se produce cuando en el ingreso el NumA=0 y NumB=0.
//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularEstadisticasNumeros
	Definir NumA, NumB Como Entero
	Definir contador_positivos, suma_negativos, cantidad_negativos Como Entero
	Definir promedio_negativos, suma_intercambio Como Real
	contador_positivos <- 0
	suma_negativos <- 0
	cantidad_negativos <- 0
	suma_intercambio <- 0
	Repetir
		Escribir 'Ingrese el valor de NumA (0 para terminar):'
		Leer NumA
		Escribir 'Ingrese el valor de NumB (0 para terminar):'
		Leer NumB
		Si NumA<>0 Y NumB<>0 Entonces
			Si NumA>0 Entonces
				contador_positivos <- contador_positivos+1
			FinSi
			Si NumB<0 Entonces
				suma_negativos <- suma_negativos+NumB
				cantidad_negativos <- cantidad_negativos+1
			FinSi
			Si NumA>0 Y NumB<0 Entonces
				suma_intercambio <- suma_intercambio+NumA+NumB
			FinSi
		FinSi
	Hasta Que NumA=0 Y NumB=0
	Si contador_positivos>0 Entonces
		Escribir 'Cantidad de números positivos en NumA:', contador_positivos
	SiNo
		Escribir 'No se ingresaron números positivos en NumA.'
	FinSi
	Si cantidad_negativos>0 Entonces
		promedio_negativos <- suma_negativos/cantidad_negativos
		Escribir 'Promedio de números negativos en NumB:', promedio_negativos
	SiNo
		Escribir 'No se ingresaron números negativos en NumB.'
	FinSi
	Escribir 'Suma de valores positivos de NumA con valores negativos de NumB:', suma_intercambio
FinAlgoritmo
