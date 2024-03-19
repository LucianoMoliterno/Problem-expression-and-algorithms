//En un colegio se necesita saber el promedio de altura de sus alumnos en cada turno, 
//la información que llega es la siguiente:
	//Alumno/a, altura (en cmtrs), turno (1- Mañana / 2 ? Tarde)
//El fin del ingreso de datos se produce cuando llega el alumno=0.
//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularPromedioAlturaTurno
	Definir alumno Como Entero
	Definir altura, suma_alturas_manana, suma_alturas_tarde Como Real
	Definir cantidad_alumnos_manana, cantidad_alumnos_tarde Como Entero
	suma_alturas_manana <- 0
	suma_alturas_tarde <- 0
	cantidad_alumnos_manana <- 0
	cantidad_alumnos_tarde <- 0
	Repetir
		Escribir 'Ingrese el número del alumno (0 para terminar):'
		Leer alumno
		Si alumno<>0 Entonces
			Escribir 'Ingrese la altura del alumno en centímetros:'
			Leer altura
			Escribir 'Ingrese el turno del alumno (1 para Mañana, 2 para Tarde):'
			Leer turno
			Si turno=1 Entonces
				suma_alturas_manana <- suma_alturas_manana+altura
				cantidad_alumnos_manana <- cantidad_alumnos_manana+1
			SiNo
				suma_alturas_tarde <- suma_alturas_tarde+altura
				cantidad_alumnos_tarde <- cantidad_alumnos_tarde+1
			FinSi
		FinSi
	Hasta Que alumno=0
	Si cantidad_alumnos_manana>0 Entonces
		Promedio_alturas_manana <- suma_alturas_manana/cantidad_alumnos_manana
		Escribir 'Promedio de altura en el turno de la mañana:', Promedio_alturas_manana, 'centímetros'
	SiNo
		Escribir 'No se ingresaron alumnos en el turno de la mañana.'
	FinSi
	Si cantidad_alumnos_tarde>0 Entonces
		Promedio_alturas_tarde <- suma_alturas_tarde/cantidad_alumnos_tarde
		Escribir 'Promedio de altura en el turno de la tarde:', Promedio_alturas_tarde, 'centímetros'
	SiNo
		Escribir 'No se ingresaron alumnos en el turno de la tarde.'
	FinSi
FinAlgoritmo
