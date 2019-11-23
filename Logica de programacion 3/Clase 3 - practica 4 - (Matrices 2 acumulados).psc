funcion nota <- validar_nota(c)
	
	Escribir "Ingrese la nota"
	Repetir
		Leer nota
		Si nota<0 o nota>100 Entonces
			Escribir "La nota deben estar en el rango de 0 a 100"
		FinSi
	Hasta Que nota1>=0 y nota1<=100
	
FinFuncion


Subproceso cargar_matriz(matriz)
	
	para f <- 1 hasta 5 Hacer
		Escribir "Ingrese las notas del estudiente ",f
		Para c <-1 hasta 3 hacer   
			matriz[f,c] <- validar_nota(c)
		FinPara
	FinPara

FinSubProceso


Funcion indice <- validar_indice(rango_Min,rango_Max, mensaje)
	
	Escribir "Ingrese indice de la ", mensaje, " de la matriz a consultar"
	Escribir "Es rango es de ",rango_Min," a ",rango_Max
	Repetir
		Leer indice
		Si indice<rango_Min o indice>rango_Max Entonces
			Escribir "El indice debe estar en el rango de ",rango_Min," a ",rango_Max
		FinSi
	Hasta Que indice>=rango_Min y indice<=rango_Max
	
FinFuncion

Subproceso mostrar_matriz(matriz)
	
	para f <- 1 hasta 5 Hacer
		Escribir "Estudiente ",f," su notas son: " Sin Saltar
		Para c <-1 hasta 3 hacer   
			Escribir matriz[f,c]
		FinPara
	FinPara
	
FinSubProceso

Funcion resultado <- acumular_notas(matriz)
	
	para f <- 1 hasta 5 Hacer
		Para c <-1 hasta 3 hacer   
			resultado <- resultado + matriz[f,c]
		FinPara
	FinPara
	
FinFuncion

Subproceso mostrar_acumulador_estudiantes(matriz)
	
	definir acumulado como real
	
	para f <- 1 hasta 5 Hacer
			acumulado <- 0
		Para c <-1 hasta 3 hacer   
			acumulado <- acumulado + matriz[f,c]
		FinPara
		Escribir "El acumulado de cada estudiante es: ",acumulado
	FinPara
	
FinSubProceso

Subproceso mostrar_acumulador_estudiantes(matriz)
	
	definir acumulado como real
	
	para f <- 1 hasta 5 Hacer
		acumulado <- 0
		Para c <-1 hasta 3 hacer   
			acumulado <- acumulado + matriz[f,c]
		FinPara
		Escribir "El acumulado de cada estudiante es: ",acumulado
	FinPara
	
FinSubProceso


Algoritmo sin_titulo
	
	definir indice_Fila, indice_Columna como entero
	Dimension matriz[5,3]
	cargar_matriz(matriz)
	mostrar_matriz(matriz)
	//valido indice de las filas
	indice_Fila <- validar_indice(1,5,"fila")
	//valido indice de columnas
	indice_Columna <- validar_indice(1,3,"columna")
	Escribir matriz[indice_Fila,indice_Columna]
	acumulado_total_notas <- acumular_notas(matriz)
	escribir "El acumuladoer de la seccion", acumulado_total_notas
	
FinAlgoritmo
