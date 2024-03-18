//un registro de cantidades de vuelos registrados por una empresa de turismo es la siguiente, previamente ordenado:
	//destinos / cantidad de vuelos
//la finalizacion esta determinada por eof
//se debe tener en cuenta que pueden existir mas de un registro por destino
//se necesita (calcular y mostrar):
	//1. el total de vuelos realizados a cada destino
	//2. el promedio de vuelos por destino
	//3. cantidad de destinos en los cuales se realizo un total de 25 o mas vuelos
Algoritmo CalcularVuelos
	// Declaración de variables
	Definir destino_actual, cantidad_vuelos Como Cadena
	Definir total_vuelos, cantidad_destinos_25_mas_vuelos Como Entero
	Definir promedio_vuelos_por_destino Como Real
	// Inicialización de variables
	total_vuelos <- 0
	cantidad_destinos_25_mas_vuelos <- 0
	// Leer el primer registro
	Leer destino_actual, cantidad_vuelos
	// Inicializar variables para el primer destino
	total_vuelos <- cantidad_vuelos
	cantidad_destinos <- 1
	// Leer los siguientes registros
	Mientras  NO sea el final del archivo Hacer
		Si destino_actual<>destino_anterior Entonces
			// Mostrar el total de vuelos para el destino anterior
			Escribir 'El total de vuelos para el destino ', destino_anterior, ' es: ', total_vuelos
			// Calcular el promedio de vuelos por destino
			promedio_vuelos_por_destino <- total_vuelos/cantidad_destinos
			Escribir 'El promedio de vuelos para el destino ', destino_anterior, ' es: ', promedio_vuelos_por_destino
			// Verificar si el total de vuelos para el destino anterior es 25 o más
			Si total_vuelos>=25 Entonces
				cantidad_destinos_25_mas_vuelos <- cantidad_destinos_25_mas_vuelos+1
			FinSi
			// Reiniciar variables para el siguiente destino
			total_vuelos <- cantidad_vuelos
			cantidad_destinos <- 1
		SiNo
			// Acumular la cantidad de vuelos para el destino actual
			total_vuelos <- total_vuelos+cantidad_vuelos
			cantidad_destinos <- cantidad_destinos+1
		FinSi
		// Leer el siguiente registro
		Leer destino_actual, cantidad_vuelos
	FinMientras
	// Mostrar el total de vuelos para el último destino
	Escribir 'El total de vuelos para el destino ', destino_actual, ' es: ', total_vuelos
	// Calcular el promedio de vuelos para el último destino
	promedio_vuelos_por_destino <- total_vuelos/cantidad_destinos
	Escribir 'El promedio de vuelos para el destino ', destino_actual, ' es: ', promedio_vuelos_por_destino
	// Verificar si el total de vuelos para el último destino es 25 o más
	Si total_vuelos>=25 Entonces
		cantidad_destinos_25_mas_vuelos <- cantidad_destinos_25_mas_vuelos+1
	FinSi
	// Mostrar la cantidad de destinos con 25 o más vuelos
	Escribir 'Cantidad de destinos con 25 o más vuelos: ', cantidad_destinos_25_mas_vuelos
FinAlgoritmo
