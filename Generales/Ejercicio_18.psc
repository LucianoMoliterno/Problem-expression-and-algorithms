// Ingresar un solo par de valores A y B y efectuar las 4 operaciones básicas. 
// Considerar que,si se intenta dividir por cero, en lugar del resultado, se debe imprimir el mensaje "No es posible la división".
Algoritmo OperacionesBasicas
	Definir A, B, suma, resta, producto, division Como Real
	// Leer los valores A y B
	Escribir 'Ingrese el valor de A:'
	Leer A
	Escribir 'Ingrese el valor de B:'
	Leer B
	// Realizar las operaciones básicas
	suma <- A+B
	resta <- A-B
	producto <- A*B
	// Verificar si B es distinto de cero antes de la división
	Si B<>0 Entonces
		division <- A/B
	SiNo
		Escribir 'No es posible la división'
	FinSi
	// Mostrar los resultados de las operaciones
	Escribir 'Suma:', suma
	Escribir 'Resta:', resta
	Escribir 'Producto:', producto
	Si B<>0 Entonces
		Escribir 'División:', division
	FinSi
FinAlgoritmo
