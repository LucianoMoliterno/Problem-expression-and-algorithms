//Ingresar un conjunto VEC1 de 50 números enteros. A partir de este conjunto generar otro VEC2 en el que cada elemento sea el doble del elemento homólogo de VEC1. 
//Finalmente imprimir ambos vectores a razón de un valor de cada uno por renglón.
Algoritmo GenerarVEC2Doble
	Dimensionar VEC1(50), VEC2(50)
	// Ingresar los valores del conjunto VEC1
	Escribir 'Ingrese los 50 números enteros para el conjunto VEC1:' // Dimensionamos los dos vectores con 50 componentes cada uno
	Para i<-1 Hasta 50 Hacer
		Leer VEC1[i]
	FinPara // Leemos cada elemento del conjunto VEC1
	// Generar el conjunto VEC2 con el doble de cada elemento de VEC1
	Para i<-1 Hasta 50 Hacer
		VEC2[i] <- VEC1[i]*2
	FinPara // Asignamos el doble del valor de VEC1 al elemento correspondiente de VEC2
	// Imprimir ambos conjuntos VEC1 y VEC2
	Escribir 'Conjunto VEC1:'
	Para i<-1 Hasta 50 Hacer
		Escribir VEC1[i]
	FinPara // Imprimimos cada elemento del conjunto VEC1
	Escribir 'Conjunto VEC2 (el doble de VEC1):'
	Para i<-1 Hasta 50 Hacer
		Escribir VEC2[i]
	FinPara // Imprimimos cada elemento del conjunto VEC2
FinAlgoritmo
