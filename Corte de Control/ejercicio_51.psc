//En un archivo vienen informados los datos de las notas que los alumnos obtienen en las materias que cursan, se desea saber, por lo tanto, imprimir:
	//*Cuando alumnos cursan cada materia (hay varios registros por alumno, y por materia)
	//*La nota promedio de cada alumno.
	//*Nota promedio general.
	//*La finalización está determinada por EOF.
	//N° de legajo  Código   Materia  Nota  Nombre y Apellido
Algoritmo NotasAlumnos
	Definir Legajo, CodigoMateria, Nota, CantidadMaterias, PromedioAlumno, PromedioGeneral Como Real
	Definir NombreApellido Como Cadena
	PromedioGeneral <- 0
	CantidadMaterias <- 0
	Leer Legajo, CodigoMateria, Nota, NombreApellido
	Mientras  NO FinalDelArchivo Hacer
		PromedioAlumno <- Nota
		CantidadMaterias <- 1
		Escribir 'Alumno:', NombreApellido
		Mientras  NO FinalDelArchivo Y Legajo=Legajo Hacer
			Escribir 'Materia:', CodigoMateria, ' Nota:', Nota
			PromedioAlumno <- PromedioAlumno+Nota
			CantidadMaterias <- CantidadMaterias+1
			Leer Legajo, CodigoMateria, Nota, NombreApellido
		FinMientras
		PromedioAlumno <- PromedioAlumno/CantidadMaterias
		Escribir 'Promedio del alumno:', PromedioAlumno
		PromedioGeneral <- PromedioGeneral+PromedioAlumno
	FinMientras
	PromedioGeneral <- PromedioGeneral/CantidadMaterias
	Escribir 'Promedio general de todos los alumnos:', PromedioGeneral
FinAlgoritmo
