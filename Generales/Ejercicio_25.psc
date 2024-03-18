// En una empresa trabajan 250 empleados, de los cuales se ingresan el nombre, sueldo y cantidad de horas trabajadas.
// Si la cantidad total de horas en el mes son 180, su valor hora es el sueldo dividido 180.
// Si la persona trabaja más de 180 horas mensuales, se considera cada una de éstas horas, 
// una hora extra, y el valor de la misma es el 100 MOD  superior al valor de la hora normal.
// Calcular el nuevo sueldo en los casos de aquellos que tienen horas extras.
// Incrementar en un 14 MOD  los sueldos menores a $ 15.000- e informar:
// *Nombre y nuevo sueldo de cada empleado
// *Cantidad de empleados con sueldo inferior a $ 15.000-
// *Cantidad total de horas extras abonadas.
// *Importe total de sueldos a abonar.
Algoritmo CalcularSueldos
	Definir nombre Como Cadena
	Definir sueldo, horasTrabajadas Como Real
	Definir valorHora, sueldoExtra, nuevoSueldo Como Real
	Definir cantidadMenores, totalSueldos, totalHorasExtras Como Real
	Definir i Como Entero
	cantidadMenores <- 0
	totalSueldos <- 0
	totalHorasExtras <- 0
	// Calcular el valor de la hora normal
	valorHora <- sueldo/180
	// Leer el nombre, sueldo y horas trabajadas de cada empleado
	Para i<-1 Hasta 250 Hacer
		Escribir 'Ingrese el nombre del empleado ', i, ':'
		Leer nombre
		Escribir 'Ingrese el sueldo del empleado ', i, ':'
		Leer sueldo
		Escribir 'Ingrese la cantidad de horas trabajadas del empleado ', i, ':'
		Leer horasTrabajadas
		// Calcular el nuevo sueldo en caso de horas extras
		Si horasTrabajadas>180 Entonces
			sueldoExtra <- (horasTrabajadas-180)*valorHora*2
			nuevoSueldo <- sueldo+sueldoExtra // Valor hora extra al doble
			totalHorasExtras <- totalHorasExtras+(horasTrabajadas-180)
		SiNo
			nuevoSueldo <- sueldo
		FinSi
		// Incrementar el sueldo si es menor a $15.000
		Si nuevoSueldo<15000 Entonces
			nuevoSueldo <- nuevoSueldo*1.14
			cantidadMenores <- cantidadMenores+1 // Incremento del 14 MOD 
		FinSi
		totalSueldos <- totalSueldos+nuevoSueldo
		// Mostrar el nombre y el nuevo sueldo de cada empleado
		Escribir 'Empleado ', i, ': ', nombre, ' - Nuevo sueldo: $', nuevoSueldo
	FinPara
	Escribir 'Cantidad de empleados con sueldo inferior a $15.000:', cantidadMenores
	Escribir 'Cantidad total de horas extras abonadas:', totalHorasExtras
	Escribir 'Importe total de sueldos a abonar: $', totalSueldos
FinAlgoritmo
