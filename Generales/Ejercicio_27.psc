// Ingresar las medidas de los 3 lados de un triángulo rectángulo e informar si se verifican sus catetos y la hipotenusa.
// Informarlo con una leyenda
Algoritmo VerificarTrianguloRectangulo
	Definir lado1, lado2, hipotenusa Como Real
	// Solicitar al usuario las medidas de los lados del triángulo rectángulo
	Escribir 'Ingrese la medida de un cateto del triángulo rectángulo:'
	Leer lado1
	Escribir 'Ingrese la medida del otro cateto del triángulo rectángulo:'
	Leer lado2
	Escribir 'Ingrese la medida de la hipotenusa del triángulo rectángulo:'
	Leer hipotenusa
	// Verificar si se cumplen las condiciones del teorema de Pitágoras
	Si (lado1^2+lado2^2=hipotenusa^2) Entonces
		Escribir 'Las medidas ingresadas corresponden a los catetos y la hipotenusa de un triángulo rectángulo.'
	SiNo
		Escribir 'Las medidas ingresadas NO corresponden a los catetos y la hipotenusa de un triángulo rectángulo.'
	FinSi
FinAlgoritmo
