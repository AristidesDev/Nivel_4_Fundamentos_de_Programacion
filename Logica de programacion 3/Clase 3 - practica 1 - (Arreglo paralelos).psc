SubProceso  leer_notas(arreglo2, i)
	
	Definir nota1, nota2 como real
	
	Repetir
		Escribir "Ingrese la nota de los parciales"
		leer nota1, nota2
		Si nota1<=0 o nota1>=20 o nota2<=0 o nota2>=20 Entonces
			Escribir "Una de las notas no esta en el rango de 0 a 20"
		FinSi
	Hasta Que nota1>=0 y nota1<=20 y nota2>=0 y nota2<=20
	nota_acumulada <- calcular_Nota_Acumulada(nota1,nota2)
	cargar_Arreglo(i, nota_acumulada, arreglo2)
	
FinSubProceso


Funcion resultado <- calcular_Nota_Acumulada(not1,not2)
	
	resultado <- not1 + not2
	
Fin Funcion


subproceso cargar_Arreglo(i, nota_acumulada, arreglo Por Referencia)
	
	arreglo[i] <- nota_acumulada
		
FinSubProceso

SubProceso leer_Nombre(arreglo Por Referencia, arreglo2 Por Referencia)
	
	definir nombre como caracter
	
	Para i<-1 Hasta 5 Hacer
		Escribir "Ingrese el nombre del estudiante"
		Leer arreglo[i]
		leer_notas(arreglo2, i)
	Fin Para
	
FinSubProceso


Subproceso mostrar_Salidas(arreglo1, arreglo2)
	
	Para i<-1 Hasta 5 Hacer
		Escribir "Nombre del alumno", arreglo1[i]
		Escribir "Nota acumulada es: " arreglo2[i]
	Fin Para
	
FinSubProceso

Algoritmo sin_titulo
	
	Dimension Nombre[5], Nota_Acumulada[5]
	leer_Nombre(Nombre,Nota_Acumulada)
	mostrar_Salidas(Nombre,Nota_Acumulada)	
	
FinAlgoritmo
