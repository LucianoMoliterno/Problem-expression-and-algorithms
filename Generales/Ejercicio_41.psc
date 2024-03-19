//Se ingresan 100 números enteros no nulos y se necesita obtener:
	//*La suma de los números positivos múltiplos de 7.
	//*El promedio de los negativos ingresados en orden impar
//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularEstadisticasNumeros
	Definir contador, numero, suma_positivos_multiplos_7, cantidad_negativos_impar, suma_negativos_impar Como Entero
	Definir promedio_negativos_impar Como Real
	contador <- 0
	suma_positivos_multiplos_7 <- 0
	cantidad_negativos_impar <- 0
	suma_negativos_impar <- 0
	Repetir
		Escribir 'Ingrese un número (par ', contador+1, '):'
		Leer numero
		Si numero<>0 Entonces
			Si numero>0 Y numero MOD 7=0 Entonces
				suma_positivos_multiplos_7 <- suma_positivos_multiplos_7+numero
			FinSi
			Si numero<0 Y Abs(numero) MOD 2<>0 Entonces
				cantidad_negativos_impar <- cantidad_negativos_impar+1
				suma_negativos_impar <- suma_negativos_impar+numero
			FinSi
			contador <- contador+1
		FinSi
	Hasta Que contador=100 O numero=0
	Si suma_positivos_multiplos_7>0 Entonces
		Escribir 'Suma de números positivos múltiplos de 7:', suma_positivos_multiplos_7
	SiNo
		Escribir 'No se ingresaron números positivos múltiplos de 7.'
	FinSi
	Si cantidad_negativos_impar>0 Entonces
		promedio_negativos_impar <- suma_negativos_impar/cantidad_negativos_impar
		Escribir 'Promedio de los negativos ingresados en orden impar:', promedio_negativos_impar
	SiNo
		Escribir 'No se ingresaron números negativos en orden impar.'
	FinSi
FinAlgoritmo
