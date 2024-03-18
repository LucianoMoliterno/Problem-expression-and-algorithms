// Una empresa de software, ha decidido un aumento en sus salarios, en base a la siguiente escala:
// Sueldo Bruto                          Porcentaje de Aumento
// 0 - 15.000                                    20
// 15.001- 20.000                                10
// 20.001- 25.000                                 5
// 25.001- 30.000                                 0
// Diseñar un algoritmo que calcule el salario mensual de una persona, 
// teniendo como dato el valor hora, la cantidad de horas semanales 
// (tener presente que en el mes tenemos 4 semanas).
// A ese valor, se le denomina, sueldo bruto. Al mismo aplicarle el porcentaje de aumento correspondiente.
// Al sueldo bruto, se le debe descontar el 11 MOD  por jubilación, el 3 MOD  por obra social y el 3 MOD  por contribución al sistema de salud de jubilaciones, 
// éste nuevo valor es el sueldo neto, lo cual se debe mostrar al final de la operación.
Algoritmo CalcularSalario
	Definir valorHora, horasSemanales, sueldoBruto, sueldoNeto Como Real
	// Leer el valor de la hora y la cantidad de horas semanales
	Escribir 'Ingrese el valor por hora:'
	Leer valorHora
	Escribir 'Ingrese la cantidad de horas semanales:'
	Leer horasSemanales
	// Calcular el sueldo bruto
	sueldoBruto <- valorHora*horasSemanales*4
	// Calcular el porcentaje de aumento basado en la escala
	Definir porcentajeAumento Como Entero // Multiplicamos por 4 semanas en un mes
	Si sueldoBruto<=15000 Entonces
		porcentajeAumento <- 20
	SiNo
		Si sueldoBruto<=20000 Entonces
			porcentajeAumento <- 10
		SiNo
			Si sueldoBruto<=25000 Entonces
				porcentajeAumento <- 5
			SiNo
				porcentajeAumento <- 0
			FinSi
		FinSi // Cierre del bloque Si
	FinSi // Cierre del bloque Si
	// Aplicar el porcentaje de aumento al sueldo bruto
	sueldoBruto <- sueldoBruto*(1+porcentajeAumento/100) // Cierre del bloque Si
	// Calcular los descuentos
	Definir descuentoJubilacion, descuentoObraSocial, descuentoSalud Como Real
	descuentoJubilacion <- 0.11
	descuentoObraSocial <- 0.03
	descuentoSalud <- 0.03
	Definir totalDescuentos Como Real
	totalDescuentos <- sueldoBruto*(descuentoJubilacion+descuentoObraSocial+descuentoSalud)
	// Calcular el sueldo neto
	sueldoNeto <- sueldoBruto-totalDescuentos
	// Mostrar el sueldo neto
	Escribir 'El sueldo neto mensual es:', sueldoNeto
FinAlgoritmo
