//En una fábrica de zapatos, tienen varias máquinas que producen distintos modelos de zapatos, tiene el siguiente archivo de producción, previamente ordenado:
	//Tamaño/Cantidad
	//La finalización está determinada por el fin del archivo EOF.
	//Se debe tener en cuenta que pueden existir más de una cantidad por tamaño (varios registros que dependen de que máquina lo fabricó).
//Se necesita (calcular y mostrar):
	//*El promedio general de cada tamaño.
	//*Cuantos tamaños tienen una cantidad total mayor a 300.
	//*Cuál ha sido el tamaño con menor fabricación.
Algoritmo FabricaZapatos
	Definir TAMANO, Cantidad, Total, MenorCantidad Como Entero
	Definir Promedio, PromedioGeneral, MenorFabricacion Como Real
	Definir Contador, ContadorMas300 Como Entero
	PromedioGeneral <- 0
	Contador <- 0
	ContadorMas300 <- 0
	MenorCantidad <- 9999999
	Leer TAMANO
	Mientras TAMANO<>0 Hacer
		Leer Cantidad
		Total <- Cantidad
		Contador <- Contador+1
		Mientras TAMANO<>0 Hacer
			Total <- Total+Cantidad
			Contador <- Contador+1
			Leer Cantidad
		FinMientras
		Promedio <- Total/Contador
		PromedioGeneral <- PromedioGeneral+Promedio
		Si Total>300 Entonces
			ContadorMas300 <- ContadorMas300+1
		FinSi
		Si Total<MenorCantidad Entonces
			MenorCantidad <- Total
			MenorFabricacion <- TAMANO
		FinSi
		Contador <- 0
		Leer TAMANO
	FinMientras
	PromedioGeneral <- PromedioGeneral/Contador
	Escribir 'El promedio general de cada tamaño es:', PromedioGeneral
	Escribir 'La cantidad de tamaños con una cantidad total mayor a 300 es:', ContadorMas300
	Escribir 'El tamaño con menor fabricación es:', MenorFabricacion
FinAlgoritmo
