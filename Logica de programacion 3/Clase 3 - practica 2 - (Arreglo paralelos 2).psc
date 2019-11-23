SubProceso leer_entradas(nomb Por Referencia, sexo Por Referencia, edad Por Referencia)
	
	Para i<-1 Hasta 7 Hacer
		Escribir "Ingrese nombre del estudiente"
		Leer nomb[i]
		sexo[i] <- validar_Sexo()
		edad[i] <- validar_Edad()
	Fin Para
	
FinSubProceso

Funcion sexo <- validar_Sexo()
	
	Escribir "Ingrese sexo de la persona F o M"
	Repetir
		Leer sex
		sexo <- Mayusculas(sex)
		Si sexo<>"F" y sexo<>"M"  Entonces
			Escribir "El caracter ingresado debe ser M o F para el sexo"
		Fin Si
	Hasta Que sexo="F" o sexo="M"

FinSubProceso

Funcion edad <- validar_Edad()
	
	Escribir "Ingrese la edad"
	Repetir
		Leer edad
		Si edad<15 o edad>70 Entonces
			Escribir "La edad debe estar en el rango de 15 a 70 años"
		FinSi
	Hasta Que edad>=15 y edad<=70
	
FinSubProceso

Funcion promedio_edad <- calcular_promedio(arreglo_edad)
	
	definir edad_acumulado como entero
	definir promedio_edad como real
	
	edad_acumulada <- 0
	Para i<-1 Hasta 7 Hacer
		edad_acumulada <- edad_acumulada + arreglo_edad[i]
	Fin Para
	promedio_edad <- edad_acumulada/7
	promedio_edad <- redon(promedio_edad)
FinFuncion

subproceso mostrar_Salidas(nombre,sexo,edad,promedio_edad)
	
	Escribir "Solo se muestran las mujeres con edad mayor al promedio de: ", promedio_edad, " las edades el grupo"
	Para i<-1 Hasta 7 Hacer
		Si edad[i]>promedio_edad y sexo[i]="F" Entonces
			Escribir "El nombre de la persona es: ",nombre[i]
			EScribir "su edad es: ",edad[i]
		Fin Si
	Fin Para
		
FinSubProceso


Algoritmo arreglo_Paralelos
	
	Dimension Nombre[7], sexo[7], edad[7]
	leer_entradas(Nombre, sexo, edad)
	promedio <- calcular_promedio(edad)
	mostrar_Salidas(Nombre, sexo, edad,promedio)	
	
FinAlgoritmo
