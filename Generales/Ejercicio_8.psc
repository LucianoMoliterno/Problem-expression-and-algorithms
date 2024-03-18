// Escribir un algoritmo que determine si el año es bisiesto o no. Se debe de tener en cuenta
// que, para saberlo, un año es bisiesto si es múltiplo entero de 4 (por ejemplo, 2020 lo fue y
// es un resultado entero, el 2021 no es un resultado entero).
// Ingresar el año y mostrar la leyenda apropiada
Algoritmo AnioBisiesto
	// Leer el año ingresado por el usuario
	Escribir 'Ingrese el año:'
	Leer anio
	// Verificar si el año es bisiesto
	Si (anio MOD 4=0) Entonces
		Escribir anio, ' es un año bisiesto.'
	SiNo
		Escribir anio, ' no es un año bisiesto.'
	FinSi
FinAlgoritmo
