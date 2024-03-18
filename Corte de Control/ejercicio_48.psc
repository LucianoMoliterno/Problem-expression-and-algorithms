//Una compañía aérea realiza viajes a Europa. Ingresar los vuelos diarios ordenados por destino, 
//indicando el Número de Vuelo, Cantidad de Pasajeros por Vuelo y el Código de Destino (es una letra distinta para cada país). 
//Finaliza ingresando Código de Destino en blanco. Informar:
	//*Si cada avión viaja completo o con lugares libres, considerando que la capacidad de todos los aviones es de 150 pasajeros.
	//*El porcentaje de vuelos completos del día.
	//*La cantidad de pasajeros que viajaron a cada país.
Algoritmo VuelosEuropa
	Definir NumVuelo, CantPasajeros, CodDestino Como Entero
	Definir PasajerosTotales, VuelosCompletos, PasajerosPorPais Como Entero
	Definir PorcentajeVuelosCompletos Como Real
	PasajerosTotales <- 0
	VuelosCompletos <- 0
	PasajerosPorPais <- 0
	Escribir 'Ingrese el número de vuelo (0 para finalizar):'
	Leer NumVuelo
	Mientras NumVuelo<>0 Hacer
		Escribir 'Ingrese la cantidad de pasajeros y el código de destino:'
		Leer CantPasajeros, CodDestino
		PasajerosTotales <- PasajerosTotales+CantPasajeros
		Si CantPasajeros>=150 Entonces
			Escribir 'El vuelo', NumVuelo, 'está completo.'
			VuelosCompletos <- VuelosCompletos+1
		SiNo
			Escribir 'El vuelo', NumVuelo, 'tiene lugares libres.'
		FinSi
		Si CodDestino='A' Entonces
			PasajerosPorPais <- PasajerosPorPais+CantPasajeros
		FinSi
		Escribir 'Ingrese el número de vuelo (0 para finalizar):'
		Leer NumVuelo
	FinMientras
	PorcentajeVuelosCompletos <- (VuelosCompletos/(VuelosCompletos+1))*100
	Escribir 'El porcentaje de vuelos completos del día es:', PorcentajeVuelosCompletos, '%.'
	Escribir 'La cantidad de pasajeros que viajaron al país A es:', PasajerosPorPais
FinAlgoritmo
