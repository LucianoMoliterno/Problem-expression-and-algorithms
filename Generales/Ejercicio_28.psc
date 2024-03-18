// Se ingresa el valor de la compra y el pago recibido (ambos valores enteros), 
// debe de calcularse la cantidad y clase de cambio que debe regresarse.
// Considerar que los billetes son $500, $200, $100, $50, $20, $10.
// Además de monedas de $5, $2, $1.
// Debe verificarse en primer lugar si el pago es suficiente, de no serlo, 
// se debe imprimir una leyenda "Pago Insuficiente".
// Si el pago excede el valor de la compra, debe especificarse el cambio a devolver y la cantidad de cada uno de los billetes o monedas, 
// teniendo presente que existe la cantidad suficiente de cambio para abastecer a la demanda.
Algoritmo CalcularCambio
	Definir compra, pago, cambio, cantidadBilletes, cantidadMonedas Como Entero
	// Solicitar al usuario el valor de la compra y el pago recibido
	Escribir 'Ingrese el valor de la compra:'
	Leer compra
	Escribir 'Ingrese el pago recibido:'
	Leer pago
	// Verificar si el pago es suficiente
	Si pago<compra Entonces
		Escribir 'Pago Insuficiente'
	SiNo
		// Calcular la cantidad de cambio a devolver
		cambio <- pago-compra
		// Mostrar la cantidad de cambio a regresar
		Escribir 'El cambio a regresar es:', cambio
		// Calcular la cantidad de billetes de cada denominación
		cantidadBilletes <- cambio
		Escribir 'Cantidad de billetes de $500:', cantidadBilletes/500 // Comenzamos con la cantidad total de cambio
		cantidadBilletes <- cantidadBilletes MOD 500
		Escribir 'Cantidad de billetes de $200:', cantidadBilletes/200 // Actualizamos la cantidad de cambio restante
		cantidadBilletes <- cantidadBilletes MOD 200
		Escribir 'Cantidad de billetes de $100:', cantidadBilletes/100
		cantidadBilletes <- cantidadBilletes MOD 100
		Escribir 'Cantidad de billetes de $50:', cantidadBilletes/50
		cantidadBilletes <- cantidadBilletes MOD 50
		Escribir 'Cantidad de billetes de $20:', cantidadBilletes/20
		cantidadBilletes <- cantidadBilletes MOD 20
		Escribir 'Cantidad de billetes de $10:', cantidadBilletes/10
		cantidadBilletes <- cantidadBilletes MOD 10
		// Calcular la cantidad de monedas de cada denominación
		cantidadMonedas <- cantidadBilletes
		Escribir 'Cantidad de monedas de $5:', cantidadMonedas/5 // La cantidad de monedas será el cambio restante
		cantidadMonedas <- cantidadMonedas MOD 5
		Escribir 'Cantidad de monedas de $2:', cantidadMonedas/2
		cantidadMonedas <- cantidadMonedas MOD 2
		Escribir 'Cantidad de monedas de $1:', cantidadMonedas/1
	FinSi
FinAlgoritmo
