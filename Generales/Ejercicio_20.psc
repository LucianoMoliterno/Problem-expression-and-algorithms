// Desarrollar un algoritmo que permita ingresar 3 calificaciones de un alumno, 
// calcule el promedio de las mismas e informe si está aprobado o no, según sea el promedio.
// Promedio >=7, Aprobado. Promedio >=4 y <7, Diciembre. Promedio <4, Marzo.
Algoritmo CalcularPromedioYEstado
	Definir calificacion1, calificacion2, calificacion3, promedio Como Real
	// Leer las 3 calificaciones
	Escribir 'Ingrese la primera calificación:'
	Leer calificacion1
	Escribir 'Ingrese la segunda calificación:'
	Leer calificacion2
	Escribir 'Ingrese la tercera calificación:'
	Leer calificacion3
	// Calcular el promedio
	promedio <- (calificacion1+calificacion2+calificacion3)/3
	// Determinar el estado del alumno según el promedio
	Si promedio>=7 Entonces
		Escribir 'El alumno está Aprobado con un promedio de:', promedio
	SiNo
		Si promedio>=4 Y promedio<7 Entonces
			Escribir 'El alumno está en Diciembre con un promedio de:', promedio
		SiNo
			Escribir 'El alumno está en Marzo con un promedio de:', promedio
		FinSi
	FinSi
FinAlgoritmo
