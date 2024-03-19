// Realizar un algoritmo que permita ingresar la cantidad de productos comprados y el precio unitario de éstos, 
// cuando la cantidad es igual a cero se termina el ingreso de datos. 
// Se desea conocer el monto a abonar teniendo en cuenta que si la compra es superior a $1500 se
// realiza un descuento del 12 MOD . Mostrar el resultado final con una leyenda indicando el valor original, el descuento y el valor final.
Algoritmo CalcularMontoFinal
	Definir cantidad, precioUnitario, montoTotal, descuento, montoFinal Como Real
	montoTotal <- 0
	// Leer la cantidad y el precio unitario hasta que la cantidad sea igual a cero
	Repetir
		Escribir 'Ingrese la cantidad de productos comprados (0 para finalizar):'
		Leer cantidad
		Si cantidad<>0 Entonces
			Escribir 'Ingrese el precio unitario del producto:'
			Leer precioUnitario
			montoTotal <- montoTotal+(cantidad*precioUnitario)
		FinSi
	Hasta Que cantidad=0
	// Calcular el monto final y el descuento si corresponde
	Si montoTotal>1500 Entonces
		descuento <- 0.12*montoTotal
		montoFinal <- montoTotal-descuento
	SiNo
		descuento <- 0
		montoFinal <- montoTotal
	FinSi
	// Mostrar el resultado final con una leyenda
	Escribir 'Valor original de la compra:', montoTotal
	Escribir 'Descuento aplicado (12% sobre el monto total):', descuento
	Escribir 'Valor final a abonar:', montoFinal
FinAlgoritmo
