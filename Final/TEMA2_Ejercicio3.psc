//se ingresan 50 numeros enteros (distintos de cero) en un vector y se necesita generar un segundo vector con la siguiente caracteristica:
	//A) si el contenido es positivo y par, multiplicarlo por 4
	//B) si el contenido es multiplo de 3, sumarle 15
	//C) luego detectar el menor del segundo vector  y su posicion
//imprimir ambos vectores uno al lado del otro. Y el menor con su posicion
Algoritmo GenerarSegundoVector
	// Declaración de variables
	Dimensionar vector_original(50)
	Dimensionar vector_secundario(50)
	Definir menor_valor Como Entero
	Definir posicion_menor Como Entero
	Definir i Como Entero
	// Leer los 50 números enteros y almacenarlos en el vector original
	Para i<-1 Hasta 50 Con Paso 1 Hacer
		Escribir 'Ingrese el número entero ', i, ': '
		Leer vector_original[i]
		Mientras vector_original[i]=0 Hacer
			Escribir 'Ingrese un número diferente de cero.'
			Leer vector_original[i]
		FinMientras
	FinPara
	// Generar el segundo vector con las características dadas
	Para i<-1 Hasta 50 Con Paso 1 Hacer
		Si vector_original[i]>0 Y vector_original[i] MOD 2=0 Entonces
			vector_secundario[i] <- vector_original[i]*4
		SiNo
			Si vector_original[i] MOD 3=0 Entonces
				vector_secundario[i] <- vector_original[i]+15
			SiNo
				vector_secundario[i] <- vector_original[i]
			FinSi
		FinSi
	FinPara
	// Encontrar el menor valor y su posición en el segundo vector
	menor_valor <- vector_secundario[1]
	posicion_menor <- 1
	Para i<-2 Hasta 50 Con Paso 1 Hacer
		Si vector_secundario[i]<menor_valor Entonces
			menor_valor <- vector_secundario[i]
			posicion_menor <- i
		FinSi
	FinPara
	// Imprimir ambos vectores uno al lado del otro
	Escribir 'Vector Original    Vector Secundario'
	Para i<-1 Hasta 50 Con Paso 1 Hacer
		Escribir vector_original[i], '                ', vector_secundario[i]
	FinPara
	// Imprimir el menor valor y su posición
	Escribir 'El menor valor del segundo vector es: ', menor_valor, ' en la posición: ', posicion_menor
FinAlgoritmo
