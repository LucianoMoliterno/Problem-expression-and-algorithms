Algoritmo CalcularEstadisticasNumeros
	Definir numero, sumaNegativos, cantidadNegativos, menorPositivo, ordenMenorPositivo, cantidad25a50 Como Entero
	Definir promedioNegativosMenores15, porcentaje25a50 Como Real
	sumaNegativos <- 0
	cantidadNegativos <- 0
	menorPositivo <- 0
	ordenMenorPositivo <- 0
	cantidad25a50 <- 0
	Definir contador Como Entero
	contador <- 0
	Repetir
		Escribir 'Ingrese un número entero (0 para salir):'
		Leer numero
		Si numero<-15 Y (contador MOD 2<>0) Entonces
			sumaNegativos <- sumaNegativos+numero
			cantidadNegativos <- cantidadNegativos+1
		FinSi
		Si numero>0 Entonces
			Si menorPositivo=0 O numero<menorPositivo Entonces
				menorPositivo <- numero
				ordenMenorPositivo <- contador
			FinSi
		FinSi
		Si numero>=25 Y numero<=50 Entonces
			cantidad25a50 <- cantidad25a50+1
		FinSi
		contador <- contador+1
	Hasta Que numero=0
	Si cantidadNegativos>0 Entonces
		promedioNegativosMenores15 <- sumaNegativos/cantidadNegativos
	FinSi
	Si cantidad25a50>0 Entonces
		porcentaje25a50 <- (cantidad25a50/contador)*100
	FinSi
	Escribir 'Promedio de los negativos menores a -15 ingresados en orden impar:', promedioNegativosMenores15
	Escribir 'Menor de los positivos:', menorPositivo, ' en la posición:', ordenMenorPositivo
	Escribir 'Porcentaje de valores ingresados entre 25 y 50:', porcentaje25a50, '%'
FinAlgoritmo
