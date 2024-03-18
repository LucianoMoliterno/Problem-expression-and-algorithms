//En una empresa de software se ha registrado la siguiente información por cada tarea realizada:
	//Categoría Empleado   Área    Horas Trabajadas
//Las categorías de los empleados están registradas según los siguientes códigos:
	//1. Jefe de Proyecto
	//2. Analista Funcional
	//3. Programador
//Dentro de la empresa hay 10 áreas distintas. 
//El fin de ingreso de datos se produce cuando llega la categoría 0. Los datos ingresan respetando el formato establecido y pueden llegar en cualquier orden.
//Hallar la cantidad de horas trabajadas en cada sección por cada categoría, imprimir dicha información. Además, se necesita conocer el total de horas por cada categoría.
Algoritmo CalcularHorasPorCategoria
	// Definir un diccionario para almacenar las horas trabajadas por categoría y área
	Definir horasPorCategoria Como Real
	Dimensionar horasPorCategoria(3,10)
	// Inicializar todas las horas a cero
	Para categoria<-1 Hasta 3 Hacer // 3 categorías y 10 áreas
		Para area<-1 Hasta 10 Hacer
			horasPorCategoria[categoria,area]<-0
		FinPara
	FinPara
	// Leer e ingresar los datos hasta que se ingrese la categoría 0
	Escribir 'Ingrese la categoría, empleado, área y horas trabajadas (0 para finalizar):'
	Leer categoria, empleado, area, horas
	Mientras categoria<>0 Hacer
		// Actualizar las horas trabajadas para la categoría y área correspondientes
		horasPorCategoria[categoria,area]<-horasPorCategoria[categoria,area]+horas
		// Leer el siguiente conjunto de datos
		Escribir 'Ingrese la categoría, empleado, área y horas trabajadas (0 para finalizar):'
		Leer categoria, empleado, area, horas
	FinMientras
	// Calcular y mostrar las horas trabajadas por cada categoría y área
	Para categoria<-1 Hasta 3 Hacer
		Escribir 'Categoría:', categoria
		Para area<-1 Hasta 10 Hacer
			Escribir '  Área', area, ': ', horasPorCategoria[categoria,area], ' horas'
		FinPara
	FinPara
	// Calcular y mostrar las horas totales por cada categoría
	Para categoria<-1 Hasta 3 Hacer
		totalHoras <- 0
		Para area<-1 Hasta 10 Hacer
			totalHoras <- totalHoras+horasPorCategoria[categoria,area]
		FinPara
		Escribir 'Total de horas para la categoría', categoria, ': ', totalHoras, ' horas'
	FinPara
FinAlgoritmo
