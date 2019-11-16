Subproceso Ordenamiento_Ascendente(tamano,Arreglo Por Referencia)
	
	Definir aux como real
	
	para i<-1 hasta tamano-1
		para j<-1 hasta tamano-1
			Si arreglo[j]>arreglo[j+1] Entonces
				aux<-Arreglo[j]
				Arreglo[j]<-Arreglo[j+1]
				Arreglo[j+1]<-aux
			FinSi
		FinPara
	FinPara
	
FinSubProceso

Subproceso Ordenamiento_Descendente(tamano,Arreglo Por Referencia)
	
	Definir aux como real
	
	para i<-1 hasta tamano-1
		para j<-1 hasta tamano-1
			Si arreglo[j]<arreglo[j+1] Entonces
				aux<-Arreglo[j]
				Arreglo[j]<-Arreglo[j+1]
				Arreglo[j+1]<-aux
			FinSi
		FinPara
	FinPara
	
FinSubProceso

SubProceso Salidas(tamano,Arreglo)
	
	para i<-1 hasta tamano
		Escribir "Posision ",i," Valor ",Arreglo[i]
	FinPara
	
FinSubProceso

SubAlgoritmo Entradas(tamano,Arreglo Por Referencia)
	
	definir num como real
	
	Escribir "Digite ",tamano," valores para cargar el arreglo"
	para i<-1 hasta tamano
		leer num
		arreglo[i]<-num
	FinPara
	
FinSubAlgoritmo

Algoritmo Ordenamiento_Arreglos
	
	definir tamano Como Entero
	
	Escribir "Digite la cantidad del Arreglo"
	Leer tamano
	Dimension Arreglo[tamano]
	//Cargar del arreglo
	Entradas(tamano,Arreglo)
	//Proceso de ordenamiento ascendente
	Ordenamiento_Ascendente(tamano,Arreglo)
	Escribir "Ordemamiento Ascendente"
	Salidas(tamano,Arreglo)
	//Proceso de ordenamiento descendente
	Ordenamiento_Descendente(tamano,Arreglo)
	Escribir "Ordemamiento Descendente"
	Salidas(tamano,Arreglo)
	
FinAlgoritmo
