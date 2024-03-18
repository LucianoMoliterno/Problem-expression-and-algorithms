// Ingresar 25 números enteros e informar (mostrar con una leyenda):
// *la suma de los mismos
// *el promedio de los valores ingresados
// *el menor de todos estos números y en que ubicación se ingresó.
Algoritmo AnalizarNumeros
	Definir numeros Como Entero
	Definir suma, promedio, menor, posicionMenor Como Entero
	suma <- 0
	menor <- 0
	Para i<-1 Hasta 25 Hacer
		Escribir 'Ingrese el número ', i, ':'
		Leer numeros
		Si i=1 Entonces
			menor <- numeros
			posicionMenor <- i
		SiNo
			Si numeros<menor Entonces
				menor <- numeros
				posicionMenor <- i
			FinSi
		FinSi
		suma <- suma+numeros
	FinPara
	promedio <- suma/25
	Escribir 'Suma de los números:', suma
	Escribir 'Promedio de los números:', promedio
	Escribir 'Menor número ingresado:', menor, ' (en la ubicación ', posicionMenor, ')'
FinAlgoritmo
