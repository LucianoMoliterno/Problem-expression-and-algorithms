//Una empresa tiene cuatro depósitos, donde se almacenan los artículos fabricados, los cuales son diez, que son vendidos por sus doce jefes de ventas.
//Por cada venta realizada se registra la siguiente información:
	//N° de Depósito N° de Artículo N° de Vendedor Valor de la Venta
	//Pueden existir varias ventas del mismo depósito, del mismo artículo, del mismo vendedor, y
	//los datos ingresan respetando el formato establecido y pueden llegar en cualquier orden.
	//El final de ingreso de datos se produce con el número de depósito 5.
//Se pide:
	//*Cuál fue el valor de venta máximo, indicando el depósito, el artículo y el vendedor correspondiente.
	//*Realizar e imprimir una tabla con las ventas totales de cada depósito ordenada de forma decreciente, indicando el número de depósito y la venta total.
Algoritmo CalcularVentas
	// Definir un diccionario para almacenar las ventas totales por depósito
	Definir ventasPorDeposito Como Real
	Dimensionar ventasPorDeposito(4)
	// Inicializar las ventas totales de cada depósito a cero
	Para deposito<-1 Hasta 4 Hacer // Hay 4 depósitos
		ventasPorDeposito[deposito] <- 0
	FinPara
	// Inicializar variables para el valor de venta máximo
	valorVentaMaximo <- 0
	depositoVentaMaximo <- 0
	articuloVentaMaximo <- 0
	vendedorVentaMaximo <- 0
	// Leer e ingresar los datos hasta que se ingrese el número de depósito 5
	Escribir 'Ingrese el número de depósito, número de artículo, número de vendedor y valor de la venta (5 para finalizar):'
	Leer deposito, articulo, vendedor, valorVenta
	Mientras deposito<>5 Hacer
		// Actualizar las ventas totales del depósito
		ventasPorDeposito[deposito] <- ventasPorDeposito[deposito]+valorVenta
		// Verificar si esta venta es la de mayor valor
		Si valorVenta>valorVentaMaximo Entonces
			valorVentaMaximo <- valorVenta
			depositoVentaMaximo <- deposito
			articuloVentaMaximo <- articulo
			vendedorVentaMaximo <- vendedor
		FinSi
		// Leer el siguiente conjunto de datos
		Escribir 'Ingrese el número de depósito, número de artículo, número de vendedor y valor de la venta (5 para finalizar):'
		Leer deposito, articulo, vendedor, valorVenta
	FinMientras
	// Mostrar el valor de venta máximo
	Escribir 'El valor de venta máximo fue de ', valorVentaMaximo, ' del depósito ', depositoVentaMaximo, ', artículo ', articuloVentaMaximo, ' y vendedor ', vendedorVentaMaximo
	// Mostrar la tabla de ventas totales por depósito ordenada de forma decreciente
	Escribir 'Tabla de ventas totales por depósito:'
	Para deposito<-1 Hasta 4 Hacer
		Escribir 'Depósito ', deposito, ': ', ventasPorDeposito[deposito], ' ventas'
	FinPara
FinAlgoritmo
