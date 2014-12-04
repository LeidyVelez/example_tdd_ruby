#Cucumber

Feature: Validar Letra
	
	Como desafiado
	deseo ingresar una letra
	para adivinar la palabra

	Scenario: Ingresar Letra para verificarla en la palabra
	Given Ingreso a la aplicacion
	When ingreso "Carros" en "palabra"
	And presiono "Iniciar"
	And ingreso "C" en "letra"
	And presiono "Verificar"
	Then debo ver el texto "C _ _ _ _ _ "

	Scenario: Ingresar Letra para verificarla en la palabra
	Given Ingreso a la aplicacion
	When ingreso "Carros" en "palabra"
	And presiono "Iniciar"
	And ingreso "a" en "letra"
	And presiono "Verificar"
	Then debo ver el texto "_ A _ _ _ _"

