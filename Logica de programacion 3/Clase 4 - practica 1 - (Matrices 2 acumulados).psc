Funcion resultado <- promedio_nota(acumulado_notas,divisor)
	
	resultado <- acumulado_notas/divisor
	
Fin Funcion

funcion nota <- validar_nota(c)
	
	Escribir "Ingrese la nota"
	Repetir
		Leer nota
		Si nota<0 o nota>100 Entonces
			Escribir "La nota deben estar en el rango de 0 a 100"
		FinSi
	Hasta Que nota1>=0 y nota1<=100
	
FinFuncion

Subproceso cargar_notas(matriz)
	
	Escribir "Cargando las notas del estudiente"
	Escribir "Por favor esperar"
	para f <- 1 hasta 5 Hacer
		Para c <-1 hasta 3 hacer   
			matriz[f,c] <- Aleatorio(0,100)
		FinPara
	FinPara
	esperar 1 segundos
FinSubProceso

Funcion indice <- validar_indice(rango_Min,rango_Max, mensaje)
	
	Escribir "Ingrese indice ", mensaje, " a consultar"
	Escribir "Es rango es de ",rango_Min," a ",rango_Max
	Repetir
		Leer indice
		Si indice<rango_Min o indice>rango_Max Entonces
			Escribir "El indice debe estar en el rango de ",rango_Min," a ",rango_Max
		FinSi
	Hasta Que indice>=rango_Min y indice<=rango_Max
	
FinFuncion

Subproceso mostrar_matriz(matriz, arreglo)
	
	para f <- 1 hasta 5 Hacer
		Escribir "Notas de ",arreglo[f]," son:"
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

Funcion resultado <- acumulador_para_estudiante(matriz,f)
	
	resultado <- 0
	Para c <-1 hasta 3 hacer   
		resultado <- resultado + matriz[f,c]
	FinPara
	
FinFuncion

Subproceso mostrar_promedio_estudiante(matriz,arreglo)
	
	Definir fila como entero
	Definir total_notas como real
	
	fila <- validar_indice(1,5,"del estudiante")
	total_notas <- acumulador_para_estudiante(matriz,fila)
	Escribir "El promedio de nota de estudiante ",arreglo[fila]," es: ",promedio_nota(total_notas,3)
	
FinSubProceso

Funcion resultado <- porcentaje_aprobacion(matriz)
	
	definir contador como entero
	
	contador<-0
	para f <- 1 hasta 5 Hacer
		acumulado <- 0
		Para c <-1 hasta 3 hacer   
			Si matriz[f,c]>=50 Entonces
				contador <- contador + 1
			Fin Si
		FinPara
	FinPara
	
	resultado <- (contador/15)*100
	
FinFuncion


Funcion resultado <- porcentaje_reaprobacion(matriz)
	
	definir contador como entero
	
	contador<-0
	fila <- validar_indice(1,5,"del estudiante")
	Para c <-1 hasta 3 hacer  
		Si matriz[fila,c]<50 Entonces
				contador <- contador + 1
		Fin Si
	FinPara
	
	resultado <- (contador/3)*100
	
FinFuncion


Funcion resultado <- indice_estudiante(arreglo)
	
	definir nomb Como Caracter
	
	Escribir "Los estudiantes disponibles son"
	para i<-1 hasta 5 hacer
		Escribir [i],". ",arreglo[i]
	FinPara
	
	Repetir
		Leer nomb
		Segun nomb Hacer
			arreglo[1]: resultado <- 1
			arreglo[2]: resultado <- 2
			arreglo[3]:	resultado <- 3
			arreglo[4]:	resultado <- 4
			arreglo[5]:	resultado <- 5
			De Otro Modo:
				Escribir "Nombre no valido"
		Fin Segun
	Hasta Que resultado>=1 y resultado<=5
	
FinFuncion

SubProceso cargar_estudiantes(arreglo Por Referencia)
	
	Definir nombre como Caracter
	
	Para i<-1 Hasta 5 Hacer
		arreglo[i] <- validar_nombre("Ingrese el nombre del estudiante ",i)
	Fin Para
	
FinSubProceso

Funcion resultado <- validar_nombre(mensaje,i)
	
	Definir nombre, nomb como caracter
	
	Escribir mensaje,i
	Repetir
		Leer nomb
		resultado <- Mayusculas(nomb)
		nombre_vacio <- (resultado="")
	Mientras Que nombre_vacio

FinFuncion

Funcion nota_mayor <- mayor_nota(Matriz)
	
	Definir nota_mayor como real
	
	nota_mayor<-0
	Para f<-1 hasta 5 hacer
		Para c<-1 hasta 3 hacer
			Si matriz[f,c]>nota_mayor Entonces
				nota_mayor<-matriz[f,c]
			Fin Si
		FinPara
	FinPara
	
FinFuncion

Funcion nota_menor <- menor_nota(Matriz)
	
	Definir nota_menor como real
	
	nota_menor<-200
	Para f<-1 hasta 5 hacer
		Para c<-1 hasta 3 hacer
			Si matriz[f,c]<nota_menor Entonces
				nota_menor<-matriz[f,c]
			Fin Si
		FinPara
	FinPara
	
FinFuncion


Subproceso determinar_mayor(matriz,arreglo)
	
	May_nota <- mayor_nota(Matriz)
	Men_nota <- menor_nota(Matriz)
 	
	para f<-1 hasta 5 hacer
		Para c<-1 hasta 3 hacer 
			si matriz[f,c]=May_nota entonces
				Escribir arreglo[f] " fue uno de los estudiantes que obtuvo la mayor nota"
				Escribir "y la obtuvo en el numero ",c
			FinSi
			si matriz[f,c]=Men_nota entonces
				Escribir arreglo[f] " fue uno de los estudiantes que obtuvo la mayor nota"
				Escribir "y la obtuvo en el numero ",c
			FinSi
		FinPara
	FinPara
	
Finsubproceso


Algoritmo sin_titulo
	
	definir indice_Fila, indice_Columna como entero
	Dimension estudiante[5]
	Dimension matriz[5,3]
	cargar_estudiantes(estudiante)
	cargar_notas(matriz)
	mostrar_matriz(matriz,estudiante)
	acumulado_total_notas <- acumular_notas(matriz)
	escribir "El promedio del todos los estudiantes: ",promedio_nota(acumulado_total_notas,15)
	Escribir " "
	Escribir "El porcentaje de notas aprobadas de todos los estudiantes: ",porcentaje_aprobacion(matriz),"%"
	Escribir " "
	mostrar_promedio_estudiante(matriz,estudiante)
	Escribir " "
	nota_alumno_reprobado <- porcentaje_reaprobacion(matriz)
	Escribir "El porcentaje de notas reprobadas del estudiante ", nota_alumno_reprobado,"%"
	Escribir " "
	//indice <- indice_estudiante(estudiante)
	determinar_mayor(matriz,estudiante)
	
FinAlgoritmo
