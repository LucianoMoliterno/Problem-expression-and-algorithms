//Una empresa tiene 4 áreas de producción y por cada tarea realizada en cada pieza se registra la siguiente información:
	//Área Nro, Horas Empleadas
//El fin del ingreso de datos se produce cuando ingresa el área Nro 5.
//Leer sucesivamente los datos y determinar el total de horas empleado por cada área y que porcentaje representa cada área respecto al total de horas de producción.
//Los valores de los respectivos resultados deberán estar acompañados por sus respectivas leyendas que indican que representa cada valor.
Algoritmo CalcularHorasPorArea
	Definir area, horas, totalHorasProduccion, totalHorasArea1, totalHorasArea2, totalHorasArea3, totalHorasArea4 Como Entero
    Definir porcentajeArea1, porcentajeArea2, porcentajeArea3, porcentajeArea4 Como Real
    // Inicializar los totales de horas por área
    totalHorasArea1 <- 0
    totalHorasArea2 <- 0
    totalHorasArea3 <- 0
    totalHorasArea4 <- 0
    // Leer sucesivamente los datos hasta que se ingrese el área Nro 5
    Escribir "Ingrese el área Nro y las horas empleadas (ingrese área Nro 5 para terminar):"
    Leer area, horas
    Mientras area <> 5 Hacer
        // Sumar las horas a la respectiva área
        Segun area Hacer
            Caso 1:
                totalHorasArea1 <- totalHorasArea1 + horas
            Caso 2:
                totalHorasArea2 <- totalHorasArea2 + horas
            Caso 3:
                totalHorasArea3 <- totalHorasArea3 + horas
            Caso 4:
                totalHorasArea4 <- totalHorasArea4 + horas
				// Opcional: Agregar un caso por defecto para manejar áreas desconocidas
        FinSegun
        // Leer el próximo registro de área y horas
        Escribir "Ingrese el área Nro y las horas empleadas (ingrese área Nro 5 para terminar):"
        Leer area, horas
    FinMientras
    // Calcular el total de horas de producción
    totalHorasProduccion <- totalHorasArea1 + totalHorasArea2 + totalHorasArea3 + totalHorasArea4
    // Calcular el porcentaje de cada área respecto al total de horas de producción
    porcentajeArea1 <- (totalHorasArea1 * 100) / totalHorasProduccion
    porcentajeArea2 <- (totalHorasArea2 * 100) / totalHorasProduccion
    porcentajeArea3 <- (totalHorasArea3 * 100) / totalHorasProduccion
    porcentajeArea4 <- (totalHorasArea4 * 100) / totalHorasProduccion
    // Mostrar los resultados
    Escribir "Total de horas empleadas por el área 1:", totalHorasArea1
    Escribir "Porcentaje de horas del área 1 respecto al total de producción:", porcentajeArea1, "%"
    Escribir "Total de horas empleadas por el área 2:", totalHorasArea2
    Escribir "Porcentaje de horas del área 2 respecto al total de producción:", porcentajeArea2, "%"
    Escribir "Total de horas empleadas por el área 3:", totalHorasArea3
    Escribir "Porcentaje de horas del área 3 respecto al total de producción:", porcentajeArea3, "%"
    Escribir "Total de horas empleadas por el área 4:", totalHorasArea4
    Escribir "Porcentaje de horas del área 4 respecto al total de producción:", porcentajeArea4, "%"
FinAlgoritmo
