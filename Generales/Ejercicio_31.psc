// De una cantidad de alumnos se tiene el número de DNI y 3 notas de cada uno, 
// hallar el promedio de éstas e informar, para cada alumno, el número de DNI, el promedio obtenido y el comentario que corresponda según el resultado del promedio obtenido:
// Comentario          Promedio Obtenido
// Desaprobado:              <4
// Aprobado:              >=4 y <6
// Bueno:               >=6 y <8
// Distinguido:           >=8 y <10
// Sobresaliente:           10
// El fin del ingreso de datos es cuando se ingresa el DNI=0.
Algoritmo CalcularPromedioYComentario
	Definir dni, nota1, nota2, nota3 Como Entero
	Definir promedio Como Real
	Definir comentario Como Cadena
	// Inicializar el DNI para comenzar el bucle
	dni <- 1
	// Iterar hasta que se ingrese DNI=0
	Mientras dni<>0 Hacer
		// Solicitar el DNI del alumno
		Escribir 'Ingrese el número de DNI del alumno (ingrese 0 para terminar):'
		Leer dni
		// Si se ingresa DNI=0, salir del bucle
		Si dni=0 Entonces
			Escribir 'Fin del ingreso de datos.'
		SiNo
			// Solicitar las 3 notas del alumno
			Escribir 'Ingrese las 3 notas del alumno con DNI:', dni
			Leer nota1, nota2, nota3
			// Calcular el promedio de las notas
			promedio <- (nota1+nota2+nota3)/3
			// Determinar el comentario correspondiente al promedio obtenido
			Si promedio<4 Entonces
				comentario <- 'Desaprobado'
			SiNo
				Si promedio<6 Entonces
					comentario <- 'Aprobado'
				SiNo
					Si promedio<8 Entonces
						comentario <- 'Bueno'
					SiNo
						Si promedio<10 Entonces
							comentario <- 'Distinguido'
						SiNo
							comentario <- 'Sobresaliente'
						FinSi
						// Mostrar el resultado para el alumno actual
						Escribir 'Alumno con DNI:', dni, '- Promedio:', promedio, '- Comentario:', comentario
					FinSi
				FinSi
			FinSi
		FinSi
	FinMientras
FinAlgoritmo
