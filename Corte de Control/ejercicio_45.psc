//Se cuenta con un conjunto de números positivos, ordenados en forma creciente. 
//Cada número se repite una cantidad de veces indefinida y el último número del conjunto es 0 (cero).
//Se solicita realizar un algoritmo que, ingresando por teclado dichos números, informe:
		//*La cantidad de veces que se repite cada uno.
		//*Informe el número que más veces se repitió.
Algoritmo ContarRepeticiones
	Definir numero, anterior, cantidad, maxRepeticiones, numeroMasRepetido Como Entero
	anterior <- -1
	cantidad <- 0
	maxRepeticiones <- 0
	numeroMasRepetido <- 0
	Escribir 'Ingrese una secuencia de números positivos ordenados en forma creciente (0 para finalizar):'
	Repetir
		Leer numero
		Si numero<>anterior Entonces
			Si cantidad>maxRepeticiones Entonces
				maxRepeticiones <- cantidad
				numeroMasRepetido <- anterior
			FinSi
			Escribir 'El número ', anterior, ' se repitió ', cantidad, ' veces.'
			cantidad <- 1
		SiNo
			cantidad <- cantidad+1
		FinSi
		anterior <- numero
	Hasta Que numero=0
	Si cantidad>maxRepeticiones Entonces
		maxRepeticiones <- cantidad
		numeroMasRepetido <- anterior
	FinSi
	Escribir 'El número que más veces se repitió fue ', numeroMasRepetido, ' con ', maxRepeticiones, ' repeticiones.'
FinAlgoritmo
