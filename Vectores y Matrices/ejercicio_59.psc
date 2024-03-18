//Se tiene un archivo formado con la siguiente información:
	//N° de Vendedor Valor de la venta realizada
//Existen 10 vendedores, y se debe de tener en cuenta que pueden existir varias ventas del mismo vendedor, 
//los datos ingresan respetando el formato establecido y pueden llegar en cualquier orden. El fin del ingreso de datos se da cuando llega el vendedor N° 11.
//Se necesita realizar:
	//*Leer e imprimir el contenido del archivo a medida que se van leyendo.
	//*Hallar la cantidad total vendida por cada vendedor y emitir un listado ordenado en forma decreciente dónde figure el N° de vendedor y el total de su venta realizada.
Algoritmo CalcularVentasPorVendedor
	Definir VENDEDOR_MAXIMO Como Entero
	Definir ventasPorVendedor Como Real
	Dimensionar ventasPorVendedor(10)
	// Inicializar ventasPorVendedor a 0
	Para i<-1 Hasta 10 Hacer
		ventasPorVendedor[i] <- 0
	FinPara
	// Leer e imprimir el contenido del archivo
	Escribir 'Ingrese el número de vendedor y el valor de la venta realizada:'
	Leer vendedor, venta
	Mientras vendedor<>11 Hacer
		Escribir 'Vendedor:', vendedor, ' Venta:', venta
		ventasPorVendedor[vendedor] <- ventasPorVendedor[vendedor]+venta
		Leer vendedor, venta
	FinMientras
	// Calcular el total de ventas por vendedor
	Escribir 'Total de ventas por vendedor:'
	Para i<-1 Hasta 10 Hacer
		Escribir 'Vendedor:', i, ' Total de venta:', ventasPorVendedor[i]
	FinPara
	// Ordenar las ventas por vendedor de forma decreciente
	Escribir 'Listado ordenado por total de ventas:'
	Para i<-1 Hasta 9 Hacer
		VENDEDOR_MAXIMO <- i
		Para j<-i+1 Hasta 10 Hacer
			Si ventasPorVendedor[j]>ventasPorVendedor[VENDEDOR_MAXIMO] Entonces
				VENDEDOR_MAXIMO <- j
			FinSi
		FinPara
		Si VENDEDOR_MAXIMO<>i Entonces
			// Intercambiar los valores
			Auxiliar <- ventasPorVendedor[i]
			ventasPorVendedor[i] <- ventasPorVendedor[VENDEDOR_MAXIMO]
			ventasPorVendedor[VENDEDOR_MAXIMO] <- Auxiliar
		FinSi
	FinPara
	// Imprimir el listado ordenado
	Para i<-1 Hasta 10 Hacer
		Escribir 'Vendedor:', i, ' Total de venta:', ventasPorVendedor[i]
	FinPara
FinAlgoritmo
