//Dada una matriz MAT1 [30;25] ingresar dos valores enteros y a continuación desarrollar un algoritmo que realice los siguientes procedimientos:
		//*Imprima la matriz MAT1 por columnas.
		//*Calcule e imprima el valor promedio de los componentes de la matriz.
		//*Genere e imprima un vector VECSUMCOL donde cada componente sea la suma de la columna homóloga (columna1 ? posición 1, columna2 ? posición 2?.)
		//*Genere e imprima un vector VECMAXFIL donde cada componente sea el valor máximo de cada fila.
Algoritmo OperacionesMatriz
	Dimensionar MAT1(30,25), VECSUMCOL(25), VECMAXFIL(30)
	// Ingresar los valores de la matriz MAT1
	Escribir 'Ingrese los valores para la matriz MAT1 [30;25]:' // Definimos la matriz MAT1 y los vectores VECSUMCOL y VECMAXFIL
	Para Fila<-1 Hasta 30 Hacer
		Para Columna<-1 Hasta 25 Hacer
			Leer MAT1[Fila,Columna]
		FinPara // Leemos cada componente de la matriz MAT1
	FinPara
	// Imprimir la matriz MAT1 por columnas
	Escribir 'Matriz MAT1 por columnas:'
	Para Columna<-1 Hasta 25 Hacer
		Para Fila<-1 Hasta 30 Hacer
			Escribir MAT1[Fila,Columna]
		FinPara // Imprimimos cada componente de la columna actual
	FinPara
	// Calcular e imprimir el valor promedio de los componentes de la matriz
	Definir Suma Como Real
	Suma <- 0
	Para Fila<-1 Hasta 30 Hacer
		Para Columna<-1 Hasta 25 Hacer
			Suma <- Suma+MAT1[Fila,Columna]
		FinPara // Sumamos todos los componentes de la matriz
	FinPara
	Definir Promedio Como Real
	Promedio <- Suma/(30*25)
	Escribir 'El valor promedio de los componentes de la matriz es:', Promedio // Calculamos el promedio dividiendo la suma entre la cantidad total de elementos
	// Generar e imprimir el vector VECSUMCOL con la suma de cada columna
	Escribir 'Vector VECSUMCOL (suma de cada columna):'
	Para Columna<-1 Hasta 25 Hacer
		Definir SumaColumna Como Real
		SumaColumna <- 0
		Para Fila<-1 Hasta 30 Hacer
			SumaColumna <- SumaColumna+MAT1[Fila,Columna]
		FinPara // Sumamos todos los elementos de la columna actual
		VECSUMCOL[Columna] <- SumaColumna
		Escribir VECSUMCOL[Columna] // Asignamos la suma de la columna al vector VECSUMCOL
	FinPara // Imprimimos la suma de la columna actual
	// Generar e imprimir el vector VECMAXFIL con el valor máximo de cada fila
	Escribir 'Vector VECMAXFIL (valor máximo de cada fila):'
	Para Fila<-1 Hasta 30 Hacer
		Definir MaxFila Como Entero
		MaxFila <- MAT1[Fila,1]
		Para Columna<-2 Hasta 25 Hacer // Asignamos el primer elemento de la fila como máximo inicial
			Si MAT1[Fila,Columna]>MaxFila Entonces
				MaxFila <- MAT1[Fila,Columna]
			FinSi // Actualizamos el máximo si encontramos un valor mayor
		FinPara
		VECMAXFIL[Fila] <- MaxFila
		Escribir VECMAXFIL[Fila] // Asignamos el valor máximo de la fila al vector VECMAXFIL
	FinPara // Imprimimos el valor máximo de la fila actual
FinAlgoritmo
