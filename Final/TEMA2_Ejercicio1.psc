//En un laboratorio de investigacion se tiene el siguiente archivo, previamente ordenado:
    //enfermedad / cantidad de bacterias
//la finalizacion esta determinada por eof
//se debe tener en cuenta que pueden existir mas de un registro de bacterias por enfermedad
//se necesita (calcular y mostrar):
	//1. el promedio general de bacterias de cada enfermedad
	//2. cuantas enfermedades tienen una cantidad acumulada de bacterias superior a 30.000
	//3. cual ha sido la enfermedad con menor cantidad de bacterias
Algoritmo CalcularBacterias
	// Declaración de variables
	Definir enfermedad_actual, cantidad_bacterias Como Cadena
	Definir total_bacterias, cantidad_enfermedades_superiores_30000 Como Entero
	Definir promedio_general, menor_cantidad_bacterias Como Real
	Definir enfermedad_menor_cantidad Como Cadena
	// Inicialización de variables
	total_bacterias <- 0
	cantidad_enfermedades_superiores_30000 <- 0
	menor_cantidad_bacterias <- Infinito
	// Leer el primer registro
	Leer enfermedad_actual, cantidad_bacterias // Inicialización con un valor muy grande
	// Inicializar variables para el primer tipo de enfermedad
	total_bacterias <- cantidad_bacterias
	cantidad_enfermedades <- 1
	menor_cantidad_bacterias <- cantidad_bacterias
	enfermedad_menor_cantidad <- enfermedad_actual
	// Leer los siguientes registros
	Mientras  NO sea el final del archivo Hacer
		Si enfermedad_actual<>enfermedad_anterior Entonces
			// Calcular el promedio de bacterias de la enfermedad anterior
			promedio_general <- total_bacterias/cantidad_enfermedades
			Escribir 'El promedio general de bacterias para la enfermedad ', enfermedad_anterior, ' es: ', promedio_general
			// Verificar si la cantidad acumulada de bacterias es superior a 30.000
			Si total_bacterias>30000 Entonces
				cantidad_enfermedades_superiores_30000 <- cantidad_enfermedades_superiores_30000+1
			FinSi
			// Actualizar la enfermedad con menor cantidad de bacterias
			Si menor_cantidad_bacterias>total_bacterias Entonces
				menor_cantidad_bacterias <- total_bacterias
				enfermedad_menor_cantidad <- enfermedad_anterior
			FinSi
			// Reiniciar variables para la siguiente enfermedad
			total_bacterias <- cantidad_bacterias
			cantidad_enfermedades <- 1
		SiNo
			// Acumular la cantidad de bacterias para la enfermedad actual
			total_bacterias <- total_bacterias+cantidad_bacterias
			cantidad_enfermedades <- cantidad_enfermedades+1
		FinSi
		// Leer el siguiente registro
		Leer enfermedad_actual, cantidad_bacterias
	FinMientras
	// Calcular el promedio para la última enfermedad
	promedio_general <- total_bacterias/cantidad_enfermedades
	Escribir 'El promedio general de bacterias para la enfermedad ', enfermedad_actual, ' es: ', promedio_general
	// Verificar si la última enfermedad tiene una cantidad acumulada de bacterias superior a 30.000
	Si total_bacterias>30000 Entonces
		cantidad_enfermedades_superiores_30000 <- cantidad_enfermedades_superiores_30000+1
	FinSi
	// Actualizar la enfermedad con menor cantidad de bacterias
	Si menor_cantidad_bacterias>total_bacterias Entonces
		menor_cantidad_bacterias <- total_bacterias
		enfermedad_menor_cantidad <- enfermedad_actual
	FinSi
	// Mostrar resultados
	Escribir 'Cantidad de enfermedades con más de 30.000 bacterias: ', cantidad_enfermedades_superiores_30000
	Escribir 'La enfermedad con menor cantidad de bacterias es: ', enfermedad_menor_cantidad
FinAlgoritmo
