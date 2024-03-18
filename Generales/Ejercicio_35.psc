//Una fábrica de automóviles realizó una encuesta sobre los gustos de los compradores de acuerdo a las siguientes opciones, 
//haciendo indicar la edad de los encuestados.
//Número de Opción:
	//1. Lujo
	//2. Maniobrabilidad
	//3. Rapidez
	//4. Economía
	//5. Otros motivos
//El ingreso de datos, se produce con la Edad, Nro de Opción; cuando se ingresa en el Nro de Opción el número 6, indica el fin del ingreso de datos.
//Se necesita calcular:
	//*La cantidad de encuestados entre 18 y 30 años, inclusive, que prefieren la economía.
	//*La cantidad total de encuestados
	//*El porcentaje de encuestados mayores a 30 años que prefieren el lujo
	//*La cantidad de encuestados mayores a 40 años y menores a 55 años, que prefieren la rapidez.
	//*Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularEncuesta
	Definir edad, opcion, total_encuestados, encuestados_economia, encuestados_lujo, encuestados_rapidez Como Entero
	Definir porcentaje_lujo, encuestados_rapidez_40_55 Como Real
	// Inicializar variables
	total_encuestados <- 0
	encuestados_economia <- 0
	encuestados_lujo <- 0
	encuestados_rapidez_40_55 <- 0
	// Ingresar datos de la encuesta
	Escribir 'Ingrese la edad y el número de opción (6 para finalizar):'
	Leer edad, opcion
	// Procesar los datos hasta que se ingrese la opción 6
	Mientras opcion<>6 Hacer
		// Contabilizar la cantidad total de encuestados
		total_encuestados <- total_encuestados+1
		// Contabilizar la cantidad de encuestados entre 18 y 30 años que prefieren la economía
		Si edad>=18 Y edad<=30 Y opcion=4 Entonces
			encuestados_economia <- encuestados_economia+1
		FinSi
		// Contabilizar la cantidad de encuestados mayores a 30 años que prefieren el lujo
		Si edad>30 Y opcion=1 Entonces
			encuestados_lujo <- encuestados_lujo+1
		FinSi
		// Contabilizar la cantidad de encuestados mayores a 40 años y menores a 55 años que prefieren la rapidez
		Si edad>40 Y edad<55 Y opcion=3 Entonces
			encuestados_rapidez_40_55 <- encuestados_rapidez_40_55+1
		FinSi
		// Solicitar nuevos datos de encuesta
		Escribir 'Ingrese la edad y el número de opción (6 para finalizar):'
		Leer edad, opcion
	FinMientras
	// Calcular porcentaje de encuestados mayores a 30 años que prefieren el lujo
	porcentaje_lujo <- (encuestados_lujo/total_encuestados)*100
	// Mostrar resultados
	Escribir 'Cantidad de encuestados entre 18 y 30 años que prefieren la economía:', encuestados_economia
	Escribir 'Cantidad total de encuestados:', total_encuestados
	Escribir 'Porcentaje de encuestados mayores a 30 años que prefieren el lujo:', porcentaje_lujo, '%'
	Escribir 'Cantidad de encuestados mayores a 40 años y menores a 55 años que prefieren la rapidez:', encuestados_rapidez_40_55
FinAlgoritmo
