Funcion resultado <- func_factorial(x)
	
	Segun x Hacer
		0:resultado <-1
		De Otro Modo:
			resultado <- 2 * func_factorial(x-1)
	Fin Segun
	
FinFuncion

Algoritmo sin_titulo
	
	definir x como entero
	
	Escribir "Digite el valor de X"
	Leer x
	Escribir "El factorial de ",x," es ",func_factorial(x)
	
FinAlgoritmo
