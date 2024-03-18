// Ingresar las medidas de los 3 lados de un triángulo e informar de que tipo de triángulo se
// trata. Equilatero, Isosceles, Escaleno.
// Informarlo con una leyenda
Algoritmo TipoTriangulo
	Definir lado1, lado2, lado3 Como Real
	// Solicitar al usuario las medidas de los lados del triángulo
	Escribir 'Ingrese la medida del primer lado del triángulo:'
	Leer lado1
	Escribir 'Ingrese la medida del segundo lado del triángulo:'
	Leer lado2
	Escribir 'Ingrese la medida del tercer lado del triángulo:'
	Leer lado3
	// Verificar el tipo de triángulo
	Si lado1=lado2 Y lado1=lado3 Entonces
		Escribir 'El triángulo es Equilátero.'
	SiNo
		Si lado1=lado2 O lado1=lado3 O lado2=lado3 Entonces
			Escribir 'El triángulo es Isósceles.'
		SiNo
			Escribir 'El triángulo es Escaleno.'
		FinSi
	FinSi // Se agrega la instrucción FinSi para cerrar el bloque de la estructura condicional
FinAlgoritmo
