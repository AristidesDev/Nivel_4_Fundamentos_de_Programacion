Funcion precio <- leerPrecio ( rangoBajo,rangoAlto )
	
	Repetir
		Escribir "Ingresar el precio de la silla plastica"
		Escribir "El precio deber estar entre " , rangoBajo , " y " , rangoAlto
		leer precio
	mientras Que (rangoBajo>=precio y rangoAlto<=precio)
	
Fin Funcion

Funcion num <-leerValor( mensaje )
	
	Repetir
		Escribir mensaje
		Leer num
		
		Si num<0 Entonces
			Escribir "El valor debe ser mayor a 0"
			Escribir " "
		Fin Si
		
	Hasta Que num>=0
	
Fin Funcion


SubProceso validarRango(rangoBajo Por Referencia, rangoAlto Por Referencia)
	
	Escribir "Determine el rango de precio de la semana"
	
	Repetir
		rangoBajo <- leerValor("Ingrese el rango inferior")
		rangoAlto <- leerValor("Ingrese el rango superior")
		
		Si rangoBajo>rangoAlto Entonces
			Escribir "El valor del rango inferior es mayor a superior"
		Fin Si
		
	Hasta Que rangoBajo<=rangoAlto
	
	
FinSubProceso


Funcion resultado <- multiplicar(param1,param2)
	
	resultado <- param1 * param2
	
FinFuncion


SubProceso mostrarSalida(a,b,c,d,e)
	
	Escribir "El precio de la silla es ", a
	Escribir "La cantidad de sillas a comprar es ", b
	Escribir "El precio sion IVA es ", c
	Escribir "IVA ", d
	Escribir "Total a Pagar ", e
	
FinSubProceso


Algoritmo Validaciones_1
	
	Definir precioValido, rangoBajo, rangoAlto, IVA, subTotal, totalPagar como Real
	Definir cantidad Como Entero

	validarRango(rangoBajo,rangoAlto)
	precioValido <- leerPrecio(rangoBajo,rangoAlto)
	cantidad <- leerValor("Ingrese la cantidad de sillas a comprar")
	subTotal <- multiplicar(precioValido, cantidad)
	IVA <- multiplicar(subTotal,0.16)
	totalPagar <- subTotal + IVA
	mostrarSalida(precioValido,cantidad,subTotal,IVA,totalPagar)
		
FinAlgoritmo
