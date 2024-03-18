//Se ingresan 100 pares de valores enteros NumA y NumB, los cuales no son iguales y obtener:
	//*La suma de los mayores a -5
	//*El promedio de los múltiplos de 3 de NumB
	//*Imprimir los números comprendidos entre 100 y 200, inclusive, del NumA
	//*¿Cuál es el porcentaje de los negativos menores a -10 del NumB?
//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularEstadisticasNumeros
	Definir NumA, NumB, contador, suma_mayores_menos5, promedio_multiplos3_NumB, cantidad_multiplos3_NumB, cantidad_negativos_menos10_NumB, total_numeros_comprendidos_100_200_NumA Como Entero
	Definir porcentaje_negativos_menos10_NumB Como Real
	suma_mayores_menos5 <- 0
	promedio_multiplos3_NumB <- 0
	cantidad_multiplos3_NumB <- 0
	cantidad_negativos_menos10_NumB <- 0
	total_numeros_comprendidos_100_200_NumA <- 0
	contador <- 0
	Para contador<-1 Hasta 100 Hacer
		Escribir 'Ingrese dos valores enteros (NumA y NumB) separados por espacio:'
		Leer NumA, NumB
		Si NumA<>NumB Entonces
			Si NumA>=-5 Entonces
				suma_mayores_menos5 <- suma_mayores_menos5+NumA
			FinSi
			Si NumB MOD 3=0 Entonces
				promedio_multiplos3_NumB <- promedio_multiplos3_NumB+NumB
				cantidad_multiplos3_NumB <- cantidad_multiplos3_NumB+1
			FinSi
			Si NumA>=100 Y NumA<=200 Entonces
				Escribir 'Número comprendido entre 100 y 200:', NumA
				total_numeros_comprendidos_100_200_NumA <- total_numeros_comprendidos_100_200_NumA+1
			FinSi
			Si NumB<-10 Entonces
				cantidad_negativos_menos10_NumB <- cantidad_negativos_menos10_NumB+1
			FinSi
		FinSi
	FinPara
	promedio_multiplos3_NumB <- promedio_multiplos3_NumB/cantidad_multiplos3_NumB
	porcentaje_negativos_menos10_NumB <- cantidad_negativos_menos10_NumB/100*100
	Escribir 'Suma de los valores mayores a -5:', suma_mayores_menos5
	Escribir 'Promedio de los múltiplos de 3 de NumB:', promedio_multiplos3_NumB
	Escribir 'Cantidad de números comprendidos entre 100 y 200 de NumA:', total_numeros_comprendidos_100_200_NumA
	Escribir 'Porcentaje de negativos menores a -10 de NumB:', porcentaje_negativos_menos10_NumB, '%'
FinAlgoritmo
