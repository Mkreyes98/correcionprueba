Funcion repeticiones
	Definir  suma, menos, multi, div, repet, i como entero
	Definir car,operadorMayor como Caracter
	suma=0;menos=0;multi=0;Div=0;i=1
	car=""
	Escribir "Ingrese la expresion matematica caracter por caracter"
	Mientras car <> "F" Hacer
		Escribir "Ingrese caracter ",i ": "Sin Saltar
		Leer car 
		i=i+1
		Si car = '+' entonces
			suma = suma + 1
		Sino
			Si car = '-' Entonces
				menos = menos + 1
			SiNo
				Si car = '*' Entonces
					multi = multi + 1
				SiNo
					Si car = '/' Entonces
						Div = Div + 1
					Fin Si
				Fin Si
			Fin Si
		FinSi
	Fin Mientras
	operadorMayor = ""
	repet = 0
	Si suma > repet Entonces
		repet = suma
		operadorMayor = "+"
	Fin Si
	
	Si menos > repet Entonces
		repet = menos
		operadorMayor = "-"
	Fin Si
	
	Si multi > repet Entonces
		repet = multi
		operadorMayor = "*"
	Fin Si
	
	Si Div > repet Entonces
		repet = Div
		operadorMayor = "/"
	Fin Si
	Escribir "El operador mas repetido es: ",operadorMayor
FinFuncion
funcion pulsaciones
	Definir edad, base Como real
	definir puls Como Real
	definir nombre Como Caracter
	Escribir "Ingrese el nombre"
	Leer nombre;
	Escribir "Ingrese la edad"
	leer edad;
	base=10;
	si edad>=1 y edad<=9 Entonces
		puls= (200 - edad)/10
	SiNo
		si edad >=10 y edad<=17 Entonces
			incremento= 10*0.10
			base=base+incremento
			puls=(200 - edad )/base
		SiNo
			si edad >=18 Entonces
				incremento= 10*0.15
				base=base+incremento
				puls = (200-edad)/base
			FinSi
		FinSi
	FinSi
	Escribir nombre, " de ", edad, " años tiene ", puls, " pulsaciones"
FinFuncion

Funcion  Multiplos
	Definir numNegativo, numer, numPositivo Como Entero
	numNegativo <- 0
	numPositivo <- 0
	Escribir "Ingrese una serie de números (0 para finalizar):" Sin Saltar
	Leer numer
	Mientras numer <> 0 Hacer
		Si numer > 0 Entonces
			Si (numer MOD 3 = 0) Y (numer MOD 4 = 0) Entonces
				numPositivo <- numPositivo + 1
			Fin Si
		Sino
			Si (numer MOD 3 <> 0) Y (numer MOD 4 <> 0) Entonces
				numNegativo <- numNegativo+1
			Fin Si
		Fin Si
		Leer numer
	Fin Mientras
	
	Escribir "La cantidad de números positivos que son múltiplos de 3 y 4 es:", numPositivo
	Escribir "La cantidad de números negativos que no son múltiplos de 3 y 4 es:", numNegativo	
FinFuncion
Algoritmo correcion
	repeticiones();
	pulsaciones();
	Multiplos();
FinAlgoritmo
	