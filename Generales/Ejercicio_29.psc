// En una fábrica de neumáticos, se ha registrado el número de máquina (del 1 al 4) y la medida que tiene cada uno (diámetro).
// Además, para cada máquina se conoce el diámetro máximo y mínimo permitido en la fabricación.
// Teniendo presente que se han de analizar 5000 neumáticos, 
// hallar para cada máquina que porcentaje de neumáticos fueron fabricados fuera de tolerancia respecto de la producción total de cada máquina.
// Los resultados deben de estar acompañados por una leyenda para poder interpretar los mismos.
Algoritmo AnalizarNeumaticos
	Definir maquina, diametro, totalNeumaticos, neumaticosFueraTolerancia Como Entero
	Definir diametroMaximo, diametroMinimo Como Real
	Definir porcentajeFueraTolerancia Como Real
	// Inicializar contadores
	totalNeumaticos <- 0
	neumaticosFueraTolerancia <- 0
	// Definir los diámetros máximos y mínimos permitidos para cada máquina
	diametroMaximo <- 20.0
	diametroMinimo <- 10.0 // Ejemplo de valor máximo permitido
	// Iterar sobre cada neumático fabricado
	Para maquina<-1 Hasta 4 Hacer // Ejemplo de valor mínimo permitido
		Escribir 'Ingrese la cantidad de neumáticos fabricados en la máquina ', maquina, ':'
		Leer totalNeumaticos
		// Reiniciar el contador de neumáticos fuera de tolerancia para cada máquina
		neumaticosFueraTolerancia <- 0
		Para i<-1 Hasta totalNeumaticos Hacer
			Escribir 'Ingrese el diámetro del neumático ', i, ' fabricado en la máquina ', maquina, ':'
			Leer diametro
			// Verificar si el diámetro está fuera de tolerancia
			Si diametro<diametroMinimo O diametro>diametroMaximo Entonces
				neumaticosFueraTolerancia <- neumaticosFueraTolerancia+1
			FinSi
		FinPara
		// Calcular el porcentaje de neumáticos fuera de tolerancia para esta máquina
		porcentajeFueraTolerancia <- (neumaticosFueraTolerancia*100)/totalNeumaticos
		// Mostrar el porcentaje de neumáticos fuera de tolerancia para esta máquina
		Escribir 'Porcentaje de neumáticos fuera de tolerancia para la máquina ', maquina, ': ', porcentajeFueraTolerancia, '%'
	FinPara
FinAlgoritmo
