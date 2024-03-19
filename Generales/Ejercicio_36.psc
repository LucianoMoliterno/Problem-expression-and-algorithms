//Se han registrado tres temperaturas en el transcurso del mes con el siguiente formato:
	//Día , Temp1, Temp2, Temp3
//Se necesitar realizar un listado con la temperatura promedio de cada día. 
//Asimismo, se necesita saber cuál ha sido la temperatura más baja y el día más caluroso (con mayor promedio). 
//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularTemperaturas
	Definir dia, temp1, temp2, temp3 Como Entero
	Definir promedio, temp_minima, temp_maxima Como Real
	Definir dia_temp_minima, dia_temp_maxima Como Entero
	// Inicializar variables
	temp_minima <- 1000
	temp_maxima <- -1000 // Inicializar con un valor muy alto para asegurar que se actualizará
	// Leer las temperaturas de cada día y calcular promedio
	Escribir 'Ingrese el día y las tres temperaturas (temp1, temp2, temp3), separadas por espacios (0 para finalizar):' // Inicializar con un valor muy bajo para asegurar que se actualizará
	Leer dia, temp1, temp2, temp3
	Mientras dia<>0 Hacer
		// Calcular promedio de temperaturas
		promedio <- (temp1+temp2+temp3)/3
		// Actualizar temperatura mínima y día correspondiente
		Si promedio<temp_minima Entonces
			temp_minima <- promedio
			dia_temp_minima <- dia
		FinSi
		// Actualizar temperatura máxima y día correspondiente
		Si promedio>temp_maxima Entonces
			temp_maxima <- promedio
			dia_temp_maxima <- dia
		FinSi
		// Mostrar temperatura promedio de cada día
		Escribir 'Día', dia, ' - Temperatura promedio:', promedio
		// Solicitar nuevas temperaturas
		Escribir 'Ingrese el día y las tres temperaturas (temp1, temp2, temp3), separadas por espacios (0 para finalizar):'
		Leer dia, temp1, temp2, temp3
	FinMientras
	// Mostrar temperatura mínima y día correspondiente
	Escribir 'La temperatura más baja fue de', temp_minima, 'grados el día', dia_temp_minima
	// Mostrar temperatura máxima y día correspondiente
	Escribir 'La temperatura más alta fue de', temp_maxima, 'grados el día', dia_temp_maxima
FinAlgoritmo
