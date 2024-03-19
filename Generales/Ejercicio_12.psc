// En una fábrica hay 4000 empleados distribuidos en 5 secciones, se quiere determinar cuántos empleados hay en cada sección.
// El dato de entrada es el nombre de la persona y la sección. 
// se debe mostrar como salida "Empleados sección 1:"?. Así todas las secciones.
Algoritmo ContarEmpleadosPorSeccion
	Definir seccion, contador1, contador2, contador3, contador4, contador5 Como Entero
	contador1 <- 0
	contador2 <- 0
	contador3 <- 0
	contador4 <- 0
	contador5 <- 0
	Definir nombre Como Cadena
	// Leer el nombre de la persona y la sección hasta que se indique que terminó la entrada
	Repetir
		Escribir 'Ingrese el nombre de la persona:'
		Leer nombre
		Si nombre<>'fin' Entonces
			Escribir 'Ingrese la sección de la persona:'
			Leer seccion
			// Incrementar el contador correspondiente según la sección ingresada
			Según seccion Hacer
				1:
					contador1 <- contador1+1
				2:
					contador2 <- contador2+1
				3:
					contador3 <- contador3+1
				4:
					contador4 <- contador4+1
				5:
					contador5 <- contador5+1
				Otro:
					Escribir 'Sección no válida. Por favor, ingrese un número de sección del 1 al 5.'
			FinSegún
		FinSi
	Hasta Que nombre='fin'
	// Mostrar la cantidad de empleados por cada sección
	Escribir 'Empleados sección 1:', contador1
	Escribir 'Empleados sección 2:', contador2
	Escribir 'Empleados sección 3:', contador3
	Escribir 'Empleados sección 4:', contador4
	Escribir 'Empleados sección 5:', contador5
FinAlgoritmo
