//Ingresar por el teclado dos valores A y B (B<>0), efectuar las 4 operaciones básicas y
//mostrar los resultados por la pantalla.
Algoritmo OperacionesBasicas
	// Solicitar al usuario que ingrese los valores A y B
	Escribir "Ingrese el valor de A:"
	Leer A
	Escribir "Ingrese el valor de B (B debe ser distinto de 0):"
	Leer B
	// Verificar que B sea distinto de 0
	Si B = 0 Entonces
		Escribir "Error: B no puede ser igual a 0. Ingrese un valor válido para B."
	Sino
		// Realizar las cuatro operaciones básicas
		Suma = A + B
		Resta = A - B
		Multiplicacion = A * B
		Division = A / B
	Fin Si
FinAlgoritmo
