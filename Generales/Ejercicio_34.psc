// En un curso de 45 alumnos, se han tomado tres exámenes parciales, y la información que llega es la siguiente:
// Alumno Nota1 Nota2 Nota3 Nota4
// Cuando se ingresa cada conjunto de datos, calcular el promedio y generar un listado que además del alumno, 
// coloque el promedio con una leyenda que permita identificar si está aprobado o no (para aprobar la nota debe ser superior a 6).
Algoritmo CalcularPromedioYEstado
	Definir alumno, nota1, nota2, nota3, promedio Como Entero
	// Iterar para cada alumno
	Para alumno<-1 Hasta 45 Hacer
		Escribir 'Ingrese las notas del alumno ', alumno, ':'
		Leer nota1, nota2, nota3
		// Calcular el promedio de las notas
		promedio <- (nota1+nota2+nota3)/3
		// Determinar el estado del alumno
		Si promedio>6 Entonces
			Escribir 'Alumno ', alumno, ' - Promedio: ', promedio, ' - Aprobado'
		SiNo
			Escribir 'Alumno ', alumno, ' - Promedio: ', promedio, ' - No Aprobado'
		FinSi
	FinPara
FinAlgoritmo
