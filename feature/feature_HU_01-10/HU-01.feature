Feature: Pantalla de onboarding y registro de perfil

	Como principiante, quiero completar un formulario inicial con mi nivel, objetivos y equipo disponible para que la app configure mi experiencia desde el primer uso.

Scenario: Registro exitoso
	Given que el usuario abre la app por primera vez,
	When completa los pasos del onboarding seleccionando su nivel, objetivo y equipo,
	Then el sistema lo redirige a su pantalla principal con su plan configurado.

Example:(onboarding completado correctamente):
	|Entrada: Nivel: Principiante
	Objetivo: Ganar masa muscular
	Equipo disponible: Mancuernas y banda elástica
	Salida: Mensaje "¡Bienvenido! Tu plan personalizado ha sido configurado correctamente." y redirección a la pantalla principal con el plan de entrenamiento asignado.


Scenario: Campos sin completar
	Given que el usuario intenta avanzar sin seleccionar alguna opción obligatoria,
	When presiona el botón "Continuar",
	Then el sistema resalta en rojo el campo faltante sin avanzar de pantalla.

Example:(objetivo sin seleccionar)
	|Entrada: Nivel: Principiante
	Objetivo: (sin seleccionar)
	Equipo disponible: Mancuernas
	Resultado: Mensaje "Debes completar todos los campos obligatorios para continuar."
	Campo resaltado: Objetivo (color rojo)
	Pantalla: Permanece en el paso actual del onboarding.