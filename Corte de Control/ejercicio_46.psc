//Se cuenta con un conjunto de temperaturas tomadas en distintos días de un mismo mes (30 días), 
//ordenadas cronológicamente. En cada día se tomaron diferentes cantidades de temperaturas. 
//Se solicita realizar un algoritmo que, leyendo el día y la temperatura, muestre, para cada día, la temperatura máxima, la temperatura mínima y la temperatura promedio registradas.
Algoritmo TemperaturasMes
	Definir diaAnterior, temperatura, dia, totalTemperaturas, temperaturaMax, temperaturaMin Como Entero
	Definir temperaturaPromedio Como Real
	diaAnterior <- 0
	totalTemperaturas <- 0
	temperaturaMax <- -9999
	temperaturaMin <- 9999 // Valor inicial muy bajo
	Mientras dia<>0 Hacer // Valor inicial muy alto
		// Lee el día y la temperatura
		Escribir 'Ingrese el día y la temperatura (o ingrese 0 para terminar):'
		Leer dia, temperatura
		Si dia<>diaAnterior Entonces
			// Calcula la temperatura promedio y muestra la información del día anterior
			Si totalTemperaturas>0 Entonces
				temperaturaPromedio <- totalTemperaturas/totalTemperaturas
				Escribir 'Día ', diaAnterior, ': Temperatura Máxima: ', temperaturaMax, ', Temperatura Mínima: ', temperaturaMin, ', Temperatura Promedio: ', temperaturaPromedio
			FinSi
			// Reinicia las variables para el nuevo día
			totalTemperaturas <- 0
			temperaturaMax <- -9999
			temperaturaMin <- 9999
		FinSi
		// Actualiza las temperaturas máxima y mínima
		Si temperatura>temperaturaMax Entonces
			temperaturaMax <- temperatura
		FinSi
		Si temperatura<temperaturaMin Entonces
			temperaturaMin <- temperatura
		FinSi
		// Incrementa el contador de temperaturas para el promedio
		totalTemperaturas <- totalTemperaturas+1
		// Actualiza el día anterior
		diaAnterior <- dia
	FinMientras
	// Muestra la información del último día
	Si totalTemperaturas>0 Entonces
		temperaturaPromedio <- totalTemperaturas/totalTemperaturas
		Escribir 'Día ', diaAnterior, ': Temperatura Máxima: ', temperaturaMax, ', Temperatura Mínima: ', temperaturaMin, ', Temperatura Promedio: ', temperaturaPromedio
	FinSi
FinAlgoritmo
