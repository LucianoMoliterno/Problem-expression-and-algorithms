//Ingresar un conjunto de números enteros en un vector de 50 posiciones, VEC1 y detectar el mayor y menor, con sus respectivas posiciones. 
//Además, obtener el promedio del conjunto de valores ingresado.
Algoritmo MayorMenorPromedio
	Dimensionar VEC1(50)
	Definir mayor, menor, suma, promedio Como Real // Dimensionamos el vector VEC1 con 50 posiciones
	Definir posMayor, posMenor Como Entero
	// Ingresar los valores del vector VEC1
	Escribir 'Ingrese los 50 números enteros para el vector VEC1:'
	Para i<-1 Hasta 50 Hacer
		Leer VEC1[i]
	FinPara // Leemos cada elemento del vector VEC1
	// Inicializar las variables mayor, menor, suma y las posiciones posMayor y posMenor
	mayor <- VEC1[1]
	menor <- VEC1[1]
	posMayor <- 1
	posMenor <- 1
	suma <- VEC1[1]
	// Calcular el mayor, el menor y la suma de los valores ingresados
	Para i<-2 Hasta 50 Hacer
		Si VEC1[i]>mayor Entonces
			mayor <- VEC1[i]
			posMayor <- i
		FinSi
		Si VEC1[i]<menor Entonces
			menor <- VEC1[i]
			posMenor <- i
		FinSi
		suma <- suma+VEC1[i]
	FinPara
	// Calcular el promedio
	promedio <- suma/50
	// Mostrar el mayor, el menor y el promedio
	Escribir 'El mayor número es:', mayor, 'y su posición es:', posMayor
	Escribir 'El menor número es:', menor, 'y su posición es:', posMenor
	Escribir 'El promedio de los números ingresados es:', promedio
FinAlgoritmo
