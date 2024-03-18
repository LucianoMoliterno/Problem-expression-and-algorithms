//En un laboratorio de investigación se tiene el siguiente archivo, previamente ordenado:
	//Enfermedad/Cantidad de Bacterias
	//La finalización está determinada por EOF.
	//Se debe tener en cuenta que pueden existir más de un registro de bacterias por enfermedad.
//Se necesita (calcular y mostrar):
	//El promedio general de bacterias de cada enfermedad.
	//Cuantas enfermedades tienen una cantidad acumulada de bacterias superior a 30.000.
	//Cuál ha sido la enfermedad con menor cantidad de bacterias.
Algoritmo LaboratorioInvestigacion
	Definir Enfermedad, Bacterias, TotalBacterias, MenorCantidadBacterias Como Entero
	Definir Promedio, PromedioGeneral, MenorEnfermedad Como Real
	Definir Contador, ContadorMas30000 Como Entero
	PromedioGeneral <- 0
	Contador <- 0
	ContadorMas30000 <- 0
	MenorCantidadBacterias <- 9999999
	Leer Enfermedad
	Mientras Enfermedad<>'' Hacer
		Leer Bacterias
		TotalBacterias <- Bacterias
		Contador <- Contador+1
		Mientras Enfermedad<>'' Hacer
			TotalBacterias <- TotalBacterias+Bacterias
			Contador <- Contador+1
			Leer Bacterias
		FinMientras
		Promedio <- TotalBacterias/Contador
		PromedioGeneral <- PromedioGeneral+Promedio
		Si TotalBacterias>30000 Entonces
			ContadorMas30000 <- ContadorMas30000+1
		FinSi
		Si TotalBacterias<MenorCantidadBacterias Entonces
			MenorCantidadBacterias <- TotalBacterias
			MenorEnfermedad <- Enfermedad
		FinSi
		Contador <- 0
		Leer Enfermedad
	FinMientras
	PromedioGeneral <- PromedioGeneral/Contador
	Escribir 'El promedio general de bacterias de cada enfermedad es:', PromedioGeneral
	Escribir 'La cantidad de enfermedades con una cantidad total de bacterias superior a 30.000 es:', ContadorMas30000
	Escribir 'La enfermedad con menor cantidad de bacterias es:', MenorEnfermedad
FinAlgoritmo
