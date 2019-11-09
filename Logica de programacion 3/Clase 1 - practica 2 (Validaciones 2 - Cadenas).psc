Funcion letra <- Func_LeerCad ( cantCad,ArrCad )
	
	Repetir
		Mostrar "Ingrese el nombre del tipo de pan" Sin Saltar
		Leer cad
		cad <- Mayusculas(cad)
		cadExiste <- Func_BuscCad(cantCad,ArrCad,cad)
	Hasta Que No(cadExiste)

Fin Funcion

Funcion num <-leerValor( mensaje )
	
	Repetir
		Escribir mensaje
		Leer num
		
		Si num<0 Entonces
			Escribir "El valor debe ser mayor a 0"
			Escribir " "
		Fin Si
		
	Hasta Que num>0
	
Fin Funcion


Funcion cadExiste <- Func_BuscCad(cantCad, ArrCad, cadBuscada)
	
	cadExiste <- Falso
	
	i <- 1
	
	Repetir
		Si ArrCad[i]=cadBuscada Entonces
			cadExiste<-Verdadero
		SiNo
			i <- i + 1
		Fin Si
	Hasta Que (cadExiste o i>cantCad)
		
FinFuncion


SubProceso mostrar_Carac_Validos(cantCad,ArrCad)
	
	Para i<-1 Hasta cantCad Hacer
		Mostrar ArrCad[i] Sin Saltar
		Si i<cantCad Entonces
			mostrar "/" Sin Saltar
		FinSi
	Fin Para
	
	
FinSubProceso


Algoritmo Validaciones_Cadenas
	
	Definir N, j Como Entero
	Definir tPan, seguir como caracter
	N<-leerValor("Ingrese la cantidad de panes a procesar")
	Dimension arreglo_panes[N]
	
	j <- 1
	
	Repetir
		
		tPan <- Func_LeerCad(N, arreglo_panes)
		
		arreglo_panes[j] <- tPan		
		
		
		
		

		
		Si j<N Entonces
			Escribir "Desaa registrar otra tipo de pan (S)i o (N)o"
			Leer seguir
			
			Si Mayusculas(seguir)="N" Entonces
				S<-1
			Fin Si
		Fin Si
		
		j <- j + 1
		
	Hasta Que (S = 1 o j > N)
	
	mostrar_Carac_Validos(N,arreglo_panes)
	
	
FinAlgoritmo
