// En una estación de servicio se ingresa por día la cantidad de nafta súper y especial vendida en el corriente mes (30 días), 
// como así también se dispone del total de ambas naftas del mes anterior. 
// Ingresar todos estos datos e informar si hubo o no incremento en la venta y el porcentaje vendido de cada nafta en el mes actual.
Algoritmo CalcularIncrementoVentas
	Definir ventaSuperActual, ventaEspecialActual, totalSuperAnterior, totalEspecialAnterior Como Real
	Definir incrementoVentaSuper, incrementoVentaEspecial, porcentajeVendidoSuper, porcentajeVendidoEspecial Como Real
	// Ingresar las ventas de nafta súper y especial del mes actual
	Escribir 'Ingrese la cantidad de nafta súper vendida en el corriente mes:'
	Leer ventaSuperActual
	Escribir 'Ingrese la cantidad de nafta especial vendida en el corriente mes:'
	Leer ventaEspecialActual
	// Ingresar el total de nafta súper y especial del mes anterior
	Escribir 'Ingrese el total de nafta súper del mes anterior:'
	Leer totalSuperAnterior
	Escribir 'Ingrese el total de nafta especial del mes anterior:'
	Leer totalEspecialAnterior
	// Calcular el incremento en la venta y el porcentaje vendido de cada nafta en el mes actual
	incrementoVentaSuper <- ventaSuperActual-totalSuperAnterior
	incrementoVentaEspecial <- ventaEspecialActual-totalEspecialAnterior
	porcentajeVendidoSuper <- (ventaSuperActual/totalSuperAnterior)*100
	porcentajeVendidoEspecial <- (ventaEspecialActual/totalEspecialAnterior)*100
	// Determinar si hubo incremento en la venta
	Si incrementoVentaSuper>0 O incrementoVentaEspecial>0 Entonces
		Escribir 'Hubo un incremento en la venta.'
	SiNo
		Escribir 'No hubo incremento en la venta.'
	FinSi
	// Mostrar los porcentajes vendidos de cada nafta en el mes actual
	Escribir 'Porcentaje vendido de nafta súper en el mes actual:', porcentajeVendidoSuper, '%'
	Escribir 'Porcentaje vendido de nafta especial en el mes actual:', porcentajeVendidoEspecial, '%'
FinAlgoritmo
