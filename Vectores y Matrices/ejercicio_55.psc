Algoritmo IntercambioEquidistante
	Dimensionar VEC1(41)
	Dimensionar VEC2(41) // Dimensionamos el vector VEC1 con 41 posiciones
	// Ingresar los valores del vector VEC1
	Escribir 'Ingrese los 41 números enteros para el vector VEC1:' // Dimensionamos el vector VEC2 con 41 posiciones
	Para i<-1 Hasta 41 Hacer
		Leer VEC1[i]
	FinPara // Leemos cada elemento del vector VEC1
	// Generar el vector VEC2 con los valores intercambiados equidistantemente
	Para i<-1 Hasta 41 Hacer
		Si i MOD 2=0 Entonces
			VEC2[i] <- VEC1[i-1] // Si i es par
		SiNo // Intercambiamos el valor con la posición anterior
			VEC2[i] <- VEC1[i+1]
		FinSi // Intercambiamos el valor con la posición siguiente
	FinPara
	// Imprimir en paralelo ambos vectores
	Escribir 'Vector VEC1:', '          ', 'Vector VEC2:'
	Para i<-1 Hasta 41 Hacer
		Escribir VEC1[i], '                    ', VEC2[i]
	FinPara
FinAlgoritmo
