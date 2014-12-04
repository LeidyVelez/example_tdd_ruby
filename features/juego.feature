#Cucumber
Feature: Comienzo del juego 

	Como desafiante 
	Deseo ingresar una palabra
	Para que el desafiado pueda iniciar el juego

	Scenario: Ingresar al inicio del juego con palabra valida
	Given Ingreso a la aplicacion
	When ingreso "Carros" en "palabra"
	And presiono "Iniciar"  
	Then debo ver el texto "_ _ _ _ _ _" 

    Scenario: Ingresar al inicio del juego con palabra invalida
	Given Ingreso a la aplicacion
	When ingreso "Casa" en "palabra"
	And presiono "Iniciar"  
	Then debo ver el texto "La palabra debe tener mas de 4  y menos que 11 carateres" 
	
	Scenario: Ingresar al inicio del juego con palabra valida
	Given Ingreso a la aplicacion
	When ingreso "Carros" en "palabra"
	And presiono "Iniciar"  
	Then debo ver el texto "Numero de intentos 5" 
