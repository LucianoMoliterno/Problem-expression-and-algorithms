// En una oficina trabajan 25 empleados, de los cuales se ingresan el nombre y el sueldo. 
// Incrementar en un 14 MOD  los sueldos menores a $ 15.000- e informar:
// *Nombre y nuevo sueldo de cada empleado
// *Cantidad de empleados con sueldo inferior a $ 15.000-
// *Importe total de sueldos a abonar.
Algoritmo CalcularSueldos
	Definir nombre Como Cadena
	Definir sueldo Como Real
	Definir cantidadMenores, totalSueldos Como Real
	Definir i Como Entero
	cantidadMenores <- 0
	totalSueldos <- 0
	// Leer el nombre y el sueldo de cada empleado
	Para i<-1 Hasta 25 Hacer
		Escribir 'Ingrese el nombre del empleado ', i, ':'
		Leer nombre
		Escribir 'Ingrese el sueldo del empleado ', i, ':'
		Leer sueldo
		// Incrementar el sueldo si es menor a $15.000
		Si sueldo<15000 Entonces
			sueldo <- sueldo*1.14
			cantidadMenores <- cantidadMenores+1 // Incremento del 14 MOD 
		FinSi
		totalSueldos <- totalSueldos+sueldo
	FinPara
	// Mostrar el nombre y el nuevo sueldo de cada empleado
	Escribir 'Nombre y nuevo sueldo de cada empleado:'
	Para i<-1 Hasta 25 Hacer
		Escribir 'Empleado ', i, ': ', nombre, ' - Nuevo sueldo: $', sueldo
	FinPara
	Escribir 'Cantidad de empleados con sueldo inferior a $15.000:', cantidadMenores
	Escribir 'Importe total de sueldos a abonar: $', totalSueldos
FinAlgoritmo
