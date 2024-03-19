//en una universidad tiene el siguiente archivo de alumnos , previamente ordenados:
	//catedra/alumno/nota
//la finalizacion esta determinada por la catedra 12 se debe tener en cuenta que pueden existir mas de una nota por alumno 
//(varios examenes, trabajos practicos, recuperatorios). se necesita (calcular y mostrar):
	//A) el promedio general de cada alumno.
	//B) cuantos alumnos tiene un promedio mayor de 7.
	//C) cual ha sido el alumno con menor promedio.
Algoritmo CalcularPromedios
	Definir catedra, alumno, nota Como Entero
	Definir suma, cantidad_notas, promedio, promedio_menor Como Real
	Definir cantidad_alumnos_siete_mas, menor_promedio Como Entero
	Definir nombre_alumno_menor Como Cadena
	Definir finalizacion Como Lógico
	finalizacion <- Falso
	suma <- 0
	cantidad_notas <- 0
	cantidad_alumnos_siete_mas <- 0
	menor_promedio <- 9999
	nombre_alumno_menor <- '' // Un valor grande para inicializar
	// Leer archivo de alumnos previamente ordenados por catedra
	Mientras  NO finalizacion Hacer
		Leer catedra, alumno, nota
		Si catedra=12 Entonces
			finalizacion <- Verdadero
		FinSi
		// Calcular promedio del alumno actual
		Si alumno<>0 Entonces
			promedio <- suma/cantidad_notas
			Si promedio<menor_promedio Entonces
				menor_promedio <- promedio
				nombre_alumno_menor <- alumno
			FinSi
			Si promedio>7 Entonces
				cantidad_alumnos_siete_mas <- cantidad_alumnos_siete_mas+1
			FinSi
			Escribir 'El promedio del alumno ', alumno, ' es: ', promedio
			// Reiniciar variables para el próximo alumno
			suma <- nota
			cantidad_notas <- 1
		SiNo
			suma <- suma+nota
			cantidad_notas <- cantidad_notas+1
		FinSi
	FinMientras
	Escribir 'La cantidad de alumnos con promedio mayor a 7 es: ', cantidad_alumnos_siete_mas
	Escribir 'El alumno con menor promedio es: ', nombre_alumno_menor, ' con un promedio de: ', menor_promedio
FinAlgoritmo
