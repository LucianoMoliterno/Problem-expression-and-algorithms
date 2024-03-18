//un registro diario de choferes de colectivos tiene el siguiente formato, previamente ordenado:
//numero de unidad/ cantidad de viajes diarios
//la finalizacion esta determinada por EOF
//se debe tener en cuenta que pueden existir mas de un registro por numero de unidad.
//cuando la cantidad de viajes acumulados supera los 35, se le realiza un obsequio al chofer. se necesita (calcular y mostrar):
	//A) el total de viajes realizado por cada unidad
	//B) cantidad total de obsequios otorgados (esto significa a todas las unidades)
	//C) cual ha sido la unidad que mayor de viajes realizo
Algoritmo CalcularViajes
	Definir numero_unidad, viajes_diarios Como Entero
	Definir total_viajes, obsequios_otorgados, mayor_viajes Como Entero
	Definir unidad_mayor_viajes Como Entero
	total_viajes <- 0
	obsequios_otorgados <- 0
	mayor_viajes <- 0
	unidad_mayor_viajes <- 0
	// Leer registros de choferes hasta encontrar el final del archivo (EOF)
	Mientras  NO EOF Hacer
		Leer numero_unidad, viajes_diarios
		// Calcular total de viajes para la unidad actual
		total_viajes <- total_viajes+viajes_diarios
		// Verificar si se otorga un obsequio al chofer
		Si total_viajes>35 Entonces
			obsequios_otorgados <- obsequios_otorgados+1
			total_viajes <- total_viajes-35
		FinSi // Restar los viajes que exceden los 35
		// Verificar si la unidad actual tiene más viajes que la unidad con más viajes hasta el momento
		Si viajes_diarios>mayor_viajes Entonces
			mayor_viajes <- viajes_diarios
			unidad_mayor_viajes <- numero_unidad
		FinSi
	FinMientras
	Escribir 'El total de viajes realizado por cada unidad es: ', total_viajes
	Escribir 'La cantidad total de obsequios otorgados es: ', obsequios_otorgados
	Escribir 'La unidad que realizó más viajes es la unidad ', unidad_mayor_viajes, ' con ', mayor_viajes, ' viajes.'
FinAlgoritmo
