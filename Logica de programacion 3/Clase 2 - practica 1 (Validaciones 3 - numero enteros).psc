Funcion valor_valido <- func_validar_entero(mensaje)
	
	Definir carac_i, cad_caracteres como caracter
	definir caracterEsNumero como logico
	definir i,long_cadena, contador como entero
	
	Repetir
		
		Mostrar Mensaje sin saltar 
		leer cad_caracteres
		long_cadena <- longitud(cad_caracteres)
		i <- 1
		contador <- 0
		repetir
			carac_i <- subcadena(cad_caracteres,i,i)
			caracterEsNumero = Func_Validar_Caracter_Numerio(carac_i, contador)
			Si caracterEsNumero Entonces
				i <- i + 1
			FinSi
		mientras Que (i<=long_cadena y caracterEsNumero)
		Si NO(caracterEsNumero) Entonces
			escribir "Valor no es valido... Intente de nuevo"
			escribir ""
		FinSi
		
		Si contador>2 Entonces
			Escribir "Tiene dos puntos"
		Fin Si
		
	Hasta Que  caracterEsNumero y contador<=1
	
FinFuncion



Funcion es_numero <- Func_Validar_Caracter_Numerio(caract, contador Por Referencia)	
	
	Definir caracteres_numericos, carac_num como caracter
	Definir Long_carac_nums, i como entero
	
	caracteres_numericos <- ".0123456789"
	Long_carac_nums <- longitud(caracteres_numericos)
	
	i <- 1
	Repetir
		carac_num <- subcadena(caracteres_numericos,i,i)
		es_numero <- (caract = carac_num)
		
		Si caract="." Entonces
			contador <- contador + 1
		Fin Si
		
		i <- i + 1 
	Hasta Que (es_numero o i > Long_carac_nums)
		
FinFuncion


Algoritmo sin_titulo
	
	definir cadena1 como entero
		
	cadena1 <- func_validar_entero("Ingrese la cadena a validar")
	
	Escribir cadena1
FinAlgoritmo
