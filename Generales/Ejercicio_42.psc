// Se ingresan un par de valores, que corresponden al código y un número entero. [cod ; num]
// El fin de ingreso de datos se produce con el código 0. Únicamente existen el código 1, 2, 3.
// Se pide calcular:
// *El promedio de los valores ingresados con código 1.
// *El máximo y el mínimo valor con su respectiva posición, con código 2.
// *El promedio de los positivos y la cantidad de negativos con código 3.
// *El porcentaje correspondiente a cada código respecto del total ingresado.
// Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularEstadisticasCodigosNumeros
	Definir codigo, numero, suma_cod1, cantidad_cod1, max_cod2, min_cod2, suma_positivos_cod3, cantidad_negativos_cod3, total_cod1, total_cod2, total_cod3 Como Entero
	Definir promedio_cod1, promedio_positivos_cod3, porcentaje_cod1, porcentaje_cod2, porcentaje_cod3 Como Real
	Definir posicion_max_cod2, posicion_min_cod2 Como Entero
	suma_cod1 <- 0
	cantidad_cod1 <- 0
	max_cod2 <- -9999999
	min_cod2 <- 9999999
	suma_positivos_cod3 <- 0
	cantidad_negativos_cod3 <- 0
	total_cod1 <- 0
	total_cod2 <- 0
	total_cod3 <- 0
	Repetir
		Escribir 'Ingrese un par de valores (cod ; num) o 0 para terminar:'
		Leer codigo, numero
		Si codigo<>0 Entonces
			Según codigo Hacer
				1:
					suma_cod1 <- suma_cod1+numero
					cantidad_cod1 <- cantidad_cod1+1
				2:
					Si numero>max_cod2 Entonces
						max_cod2 <- numero
						posicion_max_cod2 <- cantidad_cod1+1
					FinSi
					Si numero<min_cod2 Entonces
						min_cod2 <- numero
						posicion_min_cod2 <- cantidad_cod1+1
					FinSi
				3:
					Si numero>0 Entonces
						suma_positivos_cod3 <- suma_positivos_cod3+numero
					SiNo
						cantidad_negativos_cod3 <- cantidad_negativos_cod3+1
					FinSi
			FinSegún
			total_cod1 <- total_cod1+(codigo=1)
			total_cod2 <- total_cod2+(codigo=2)
			total_cod3 <- total_cod3+(codigo=3)
		FinSi
	Hasta Que codigo=0
	Si cantidad_cod1>0 Entonces
		promedio_cod1 <- suma_cod1/cantidad_cod1
		Escribir 'Promedio de los valores ingresados con código 1:', promedio_cod1
	SiNo
		Escribir 'No se ingresaron valores con código 1.'
	FinSi
	Si total_cod2>0 Entonces
		Escribir 'Máximo valor ingresado con código 2:', max_cod2, 'en la posición', posicion_max_cod2
		Escribir 'Mínimo valor ingresado con código 2:', min_cod2, 'en la posición', posicion_min_cod2
	SiNo
		Escribir 'No se ingresaron valores con código 2.'
	FinSi
	Si cantidad_negativos_cod3>0 Entonces
		promedio_positivos_cod3 <- suma_positivos_cod3/(total_cod3-cantidad_negativos_cod3)
		Escribir 'Promedio de los positivos ingresados con código 3:', promedio_positivos_cod3
		Escribir 'Cantidad de negativos ingresados con código 3:', cantidad_negativos_cod3
	SiNo
		Escribir 'No se ingresaron negativos con código 3.'
	FinSi
	porcentaje_cod1 <- total_cod1/(total_cod1+total_cod2+total_cod3)*100
	porcentaje_cod2 <- total_cod2/(total_cod1+total_cod2+total_cod3)*100
	porcentaje_cod3 <- total_cod3/(total_cod1+total_cod2+total_cod3)*100
	Escribir 'Porcentaje de valores ingresados con código 1:', porcentaje_cod1, '%'
	Escribir 'Porcentaje de valores ingresados con código 2:', porcentaje_cod2, '%'
	Escribir 'Porcentaje de valores ingresados con código 3:', porcentaje_cod3, '%'
FinAlgoritmo
