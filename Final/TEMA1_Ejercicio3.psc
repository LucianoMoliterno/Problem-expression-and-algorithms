//se ingresan 50 numeros enteros (distintos de cero) en un vector y se necesita generar un segundo vector con la siguiente caracteristica:
	//A) si el contenido es negativo e impar, multiplicarlo por -3
	//B) si el contenido es multiplo de 7, sumarle 15
	//C) luego detectar el mayor del segundo vector y su posicion
//imprimir ambos vectores uno al lado del otro. Y el mayor con su posicion
Algoritmo GenerarSegundoVector
	Dimensionar vector_original(50)
	Dimensionar vector_secundario(50)
	Definir mayor_valor Como Entero
	Definir posicion_mayor Como Entero
	Definir i Como Entero
	// Leer los 50 números enteros y almacenarlos en el vector original
	Para i<-1 Hasta 50 Con Paso 1 Hacer
		Escribir 'Ingrese el número entero ', i, ': '
		Leer vector_original[i]
	FinPara
	// Generar el segundo vector con las características dadas
	Para i<-1 Hasta 50 Con Paso 1 Hacer
		Si vector_original[i]<0 Y vector_original[i] MOD 2<>0 Entonces
			vector_secundario[i] <- vector_original[i]*(-3)
		SiNo
			Si vector_original[i] MOD 7=0 Entonces
				vector_secundario[i] <- vector_original[i]+15
			SiNo
				vector_secundario[i] <- vector_original[i]
			FinSi
		FinSi
		// Encontrar el mayor valor y su posición en el segundo vector
		mayor_valor <- vector_secundario[1]
		posicion_mayor <- 1
		Para i<-2 Hasta 50 Con Paso 1 Hacer
			Si vector_secundario[i]>mayor_valor Entonces
				mayor_valor <- vector_secundario[i]
				posicion_mayor <- i
			FinSi
		FinPara
		// Imprimir ambos vectores uno al lado del otro
		Escribir 'Vector Original    Vector Secundario'
		Para i<-1 Hasta 50 Con Paso 1 Hacer
			Escribir vector_original[i], '                ', vector_secundario[i]
		FinPara
	FinPara
	// Imprimir el mayor valor y su posición
	Escribir 'El mayor valor del segundo vector es: ', mayor_valor, ' en la posición: ', posicion_mayor
FinAlgoritmo
