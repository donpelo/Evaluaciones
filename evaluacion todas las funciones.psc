Algoritmo Todas_las_funciones
	Definir op como entero
	
	Repetir
		Mostrar 	"    Elija una de las siguientes opciones "
		Mostrar  	"    1)           Secuencial              "
		Mostrar  	"    2)      Condicional si entonces      "
		Mostrar 	"    3)  Condicional si entonces anidado  "
		Mostrar 	"    4)        Condicional segun          "
		Mostrar 	"    5)       Repetitiva Mientras         "
		Mostrar		"    6)       Repetitiva Repetir          "
		Mostrar 	"    7)         repetitiva Para           "
		Mostrar 	"    8)          Arreglo Simple           "
		Mostrar 	"    9)      Arreglo Bidimencional        "
		Mostrar 	"   10)              SALIR                "
		
		Leer op		
		Segun op Hacer
			1:Secuencial()
			2:Condicionif()
			3:Condicionifanidado()
			4:conSegun()
			5:repMientras()
			6:repRepetir()
			7:repPara()
			8:Vector()
			9:Matriz()
			10:Mostrar "Sesión Finalizada"
			De Otro Modo:
				Mostrar "Opcion no valida"				
		FinSegun
		Mostrar ""
		Mostrar ""
		Mostrar ""
		Mostrar ""
		Mostrar ""
		Mostrar ""
	Hasta Que op = 10	
FinAlgoritmo

Funcion Secuencial()
	Definir A, B, C, D como real
	mostrar "Calcular Promedio"
	Mostrar "Porfavor ingrese valor 1"
	Leer A
	Mostrar "Porfavor ingrese valor 2"
	Leer B
	Mostrar "Porfavor ingrese valor 3"
	Leer C
	Mostrar""
	D = (A+B+C)/3
	Mostrar"El promedio es: " D
	
FinFuncion

Funcion Condicionif()
	Definir Nombre, Genero como caracter
	Mostrar "Porfavor ingrese su nombre"
	Leer Nombre
	Mostrar "Porfavor ingrese su genero H para Hombre o M para Mujer"
	Leer Genero
    Si Genero = "H" Entonces
		Mostrar "Dirijase al baño de Hombres"
		
	FinSi
	Si Genero = "M" Entonces
		Mostrar "Dirijase al baño de Mujeres"
		
	SiNo
		Mostrar "Opcion no Valida"
		
	FinSi	
FinFuncion

Funcion Condicionifanidado()
	Definir Nombre, Genero como caracter
	Definir A como entero
	Mostrar "Porfavor ingrese su nombre"
	Leer Nombre
	Mostrar "Porfavor ingrese su genero H para Hombre o M para Mujer"
	Leer Genero	
	Si Genero = "M" Entonces		
		Mostrar "Desea Usar Wc o Ducha?"
		Mostrar "1)Wc"
		Mostrar "2)Ducha"
		Leer A
		Si A = 1 Entonces
			Mostrar "Dirijase al los Baños de Mujeres el valor del servicio es de $250"
			
		FinSi
		Si A = 2 Entonces
			Mostrar "Dirijase al los Duchas de Mujeres el valor del servicio es de $2500"
			
		SiNo
			Mostrar "Opcion invalida"
		FinSi
	FinSi		
	Si Genero = "H" Entonces		
		Mostrar "Desea Usar Wc o Ducha?"
		Mostrar "1)Wc"
		Mostrar "2)Ducha"
		Leer A
		Si A = 1 Entonces
			Mostrar "Dirijase al los Baños de Hombres el valor del servicio es de $250"
		FinSi
		Si A = 2 Entonces
			Mostrar "Dirijase al los Duchas de Hombres, el valor del servicio es de $2500"
		SiNo
			Mostrar "Opcion NO valida"
		FinSi
	SiNo
		mostrar "Genero Incorecto"
	FinSi	
FinFuncion

Funcion conSegun()
	Mostrar"Ingres un numero del 1 al 10 para mostrarlo en palabras"
	Leer N
	segun N entonces
		1: mostrar "UNO"
		2: mostrar "DOS"
		3: mostrar "TRES"
		4: mostrar "CUATRO"
		5: mostrar "CINCO"
		6: mostrar "SEIS"
		7: mostrar "SIETE"
		8: mostrar "OCHO"
		9: mostrar "NUEVE"
		10: mostrar "DIES"
		De Otro Modo:
			Mostrar "debe ingresar un numero del 1 al 10"		
	FinSegun
FinFuncion

Funcion repMientras()
	Mostrar "Ingrese numeros hasta poner un 0"
	N=1
	A=0
	C=-1
	Mientras N <> 0 Hacer
		Mostrar "Ingrese numero"
		Leer N 
		A=A+N
		C=C+1	
	FinMientras
	Promedio = A/C
	Mostrar"Ingresaste ",C," Numeros"
	Mostrar"Y promediaron ",Promedio	
	
FinFuncion

Funcion repRepetir()
	C=-1
	repetir 
		Mostrar "Ingrese Nombres"
		C=C+1
		Leer Nombres
	Hasta Que Nombres = "Juan"	
	Mostrar "Se escribieron ",C," nombres antes de escrivir Juan"	
FinFuncion

Funcion repPara()
	Dimension Nombre[10]
	Dimension Comparacion[10]
	Dimension Con[10]
	Comparacion[0]=0
	Z=0
	para i = 0 hasta 9 Hacer
		Mostrar "ingrese nombre"
		Leer Nombre[i]
		Para j=i-1 hasta 0 Con Paso -1 hacer		
			Si Nombre[i] = Nombre[j] entonces
				Comparacion[j]=1
			SiNo
				Comparacion[j]=0
			FinSi		
		FinPara		
	FinPara	
	para i = 9 hasta 0 con paso -1 Hacer
		Si Comparacion[i] = 1 entonces
			Para j=i-1 hasta 0 Con Paso -1 hacer		
				Si Nombre[i] = Nombre[j] entonces
					Comparacion[j]=0
					con[i]=con[i]+1
				FinSi		
			FinPara			
		FinSi
	FinPara
	Para i=0 hasta 9 hacer
		si Comparacion[i]=1 entonces
			mostrar "El nombre de ",Nombre[i]," se repitio ",con[i]+1," Veces"
			Z=1
		FinSi
	FinPara	
	si Z=0 entonces 
		mostrar "no se repitieron nombres"
	FinSi	
FinFuncion

Funcion Vector()
	
	
FinFuncion

Funcion Matriz()
	
FinFuncion





