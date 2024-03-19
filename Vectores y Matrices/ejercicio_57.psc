//Ingresar un conjunto de números enteros en un vector (VEC1) de 50 posiciones y ordenar de forma descendente el mismo en un segundo vector VEC2.
//Mostrar en paralelo ambos vectores.
Algoritmo OrdenamientoDescendente
	Dimensionar VEC1(50), VEC2(50)
	Definir i, j, temp Como Entero // Definimos los dos vectores VEC1 y VEC2 con 50 posiciones
	// Ingresar los valores del vector VEC1
	Escribir 'Ingrese los 50 números enteros para el vector VEC1:'
	Para i<-1 Hasta 50 Hacer
		Leer VEC1[i]
	FinPara // Leemos cada elemento del vector VEC1
	// Copiar los valores de VEC1 a VEC2
	Para i<-1 Hasta 50 Hacer
		VEC2[i] <- VEC1[i]
	FinPara
	// Ordenar VEC2 de forma descendente usando el algoritmo de selección
	Para i<-1 Hasta 49 Hacer
		Para j<-i+1 Hasta 50 Hacer
			Si VEC2[i]<VEC2[j] Entonces
				temp <- VEC2[i]
				VEC2[i] <- VEC2[j]
				VEC2[j] <- temp
			FinSi
		FinPara
	FinPara
	// Mostrar los vectores VEC1 y VEC2 en paralelo
	Escribir 'Vector VEC1 (original)        Vector VEC2 (ordenado)'
	Para i<-1 Hasta 50 Hacer
		Escribir VEC1[i], '                        ', VEC2[i]
	FinPara
FinAlgoritmo
