// Diseñar un algoritmo que lea tres números y encuentre si uno de ellos es la suma de los
// otros dos (que los muestre al final mediante una leyenda).
Algoritmo SumaDeDosNumeros
	Definir num1, num2, num3 Como Entero
	// Leer los tres números
	Escribir 'Ingrese el primer número:'
	Leer num1
	Escribir 'Ingrese el segundo número:'
	Leer num2
	Escribir 'Ingrese el tercer número:'
	Leer num3
	// Verificar si uno de los números es la suma de los otros dos
	Si (num1=num2+num3) Entonces
		Escribir num1, ' es igual a la suma de ', num2, ' y ', num3
	FinSi
	Si (num2=num1+num3) Entonces
		Escribir num2, ' es igual a la suma de ', num1, ' y ', num3
	FinSi
	Si (num3=num1+num2) Entonces
		Escribir num3, ' es igual a la suma de ', num1, ' y ', num2
	FinSi
FinAlgoritmo
