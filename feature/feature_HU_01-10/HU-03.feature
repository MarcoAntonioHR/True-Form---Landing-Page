Feature: Pantalla de detalle de ejercicio con explicación

	Como principiante, quiero abrir un ejercicio de mi rutina y ver su descripción, músculos trabajados y el porqué de hacerlo para ejecutarlo con confianza.

Scenario: Visualización completa del ejercicio
	Given que el usuario toca una tarjeta de ejercicio,
	When se abre la pantalla de detalle,
	Then el sistema muestra el nombre, imagen o ícono ilustrativo, músculos trabajados, series y repeticiones recomendadas y una explicación breve del beneficio del ejercicio.

Example:(detalle completo del ejercicio):
	|Entrada: Ejercicio seleccionado: Sentadillas
	Músculos trabajados: Cuádriceps, glúteos y femorales
	Series: 3
	Repeticiones: 12
	Salida: Pantalla con el nombre "Sentadillas", imagen ilustrativa del ejercicio, músculos trabajados destacados, recomendación de 3 series de 12 repeticiones y explicación:
	"Este ejercicio fortalece las piernas y mejora la estabilidad corporal."


Scenario: Botón de duda rápida
	Given que el usuario tiene una duda sobre el ejercicio,
	When presiona el botón "Tengo una duda",
	Then el sistema abre el chat del asistente con el ejercicio preseleccionado como contexto.

Example:(consulta sobre un ejercicio):
	|Entrada: Ejercicio seleccionado: Flexiones de pecho
	Acción: Presionar el botón "Tengo una duda"
	Resultado: Se abre el chat del asistente automáticamente.
	Contexto cargado: "Flexiones de pecho"
	Mensaje inicial: "¿Qué duda tienes sobre este ejercicio?"