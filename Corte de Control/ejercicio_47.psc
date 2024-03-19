//Se tiene la información de las ventas del mes efectuadas a los clientes diariamente, 
//ordenado por el código de cliente, contando en el lote de datos la siguiente información: el código de cliente, el día y el importe vendido. 
//El último dato del lote tiene cliente igual a cero. Se solicita un algoritmo para informar:
			//*El listado de las ventas a cada cliente, indicando, además, el total vendido al cliente.
			//*Informar el cliente que más compras realizó.
			//*De cada cliente, informar el promedio de las compras que realizó.
			//*Informar el cliente que menor importe total compró.
Algoritmo VentasClientes
	Definir clienteActual, clienteAnterior Como Entero
	Definir dia, importe, totalCliente, totalVentas Como Real
	Definir clienteMasCompras, clienteMenorImporte Como Entero
	clienteAnterior <- 0
	totalVentas <- 0
	clienteMasCompras <- 0
	clienteMenorImporte <- 0
	Mientras clienteActual<>0 Hacer
		// Lee el código de cliente, el día y el importe vendido
		Escribir 'Ingrese el código de cliente, el día y el importe vendido (o ingrese 0 para terminar):'
		Leer clienteActual, dia, importe
		Si clienteActual<>clienteAnterior Entonces
			// Muestra el total vendido al cliente anterior
			Si totalCliente>0 Entonces
				Escribir 'Cliente ', clienteAnterior, ': Total vendido: ', totalCliente
			FinSi
			// Reinicia el total vendido para el nuevo cliente
			totalCliente <- 0
		FinSi
		// Actualiza el total vendido al cliente actual
		totalCliente <- totalCliente+importe
		// Actualiza el cliente con más compras
		Si importe>totalVentas Entonces
			totalVentas <- importe
			clienteMasCompras <- clienteActual
		FinSi
		// Actualiza el cliente con el menor importe total
		Si clienteMenorImporte=0 O totalCliente<totalVentas Entonces
			totalVentas <- totalCliente
			clienteMenorImporte <- clienteActual
		FinSi
		// Actualiza el cliente anterior
		clienteAnterior <- clienteActual
	FinMientras
	// Muestra la información requerida
	Escribir 'Cliente con más compras: ', clienteMasCompras
	Escribir 'Cliente con menor importe total: ', clienteMenorImporte
FinAlgoritmo
