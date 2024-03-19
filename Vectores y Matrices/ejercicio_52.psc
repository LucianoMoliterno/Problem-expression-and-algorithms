//Generar un arreglo de 25 componentes en el cual las mismas contengan los primeros números naturales pares e imprimirlo.
Algoritmo GenerarArregloNumerosPares
	Dimensionar Numeros(25)
	// Asignamos los primeros 25 números naturales pares al arreglo
	Para i<-1 Hasta 25 Hacer // Dimensionamos el arreglo con 25 componentes
		Numeros[i] <- i*2
		// Imprimimos el arreglo
		Escribir 'Arreglo de números pares:' // Cada elemento contendrá el valor del número par correspondiente
		Para i<-1 Hasta 25 Hacer
			Escribir Numeros[i]
		FinPara // Imprimimos cada elemento del arreglo
	FinPara // Cerrar el ciclo Para
FinAlgoritmo
