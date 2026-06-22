Feature: Selección de objetivo físico inicial

	Como usuario principiante, quiero seleccionar mi objetivo físico principal para que la aplicación genere recomendaciones acordes a lo que deseo lograr.

Scenario: Selección correcta del objetivo
	Given que el usuario está completando su perfil inicial,
	When selecciona un objetivo como ganar fuerza, bajar grasa o mejorar condición física,
	Then el sistema guarda el objetivo seleccionado y lo usa para personalizar la experiencia.

Example:(objetivo físico seleccionado correctamente):
	|Entrada: Objetivo seleccionado: Ganar fuerza
	Acción: Presionar el botón "Continuar"
	Salida: Objetivo guardado correctamente en el perfil del usuario.
	Mensaje: "Tu objetivo ha sido registrado con éxito."
	Personalización aplicada: Rutinas y recomendaciones enfocadas en el desarrollo de fuerza muscular.


Scenario: Objetivo no seleccionado
	Given que el usuario intenta continuar sin elegir un objetivo,
	When presiona "Continuar",
	Then el sistema muestra una advertencia indicando que debe seleccionar un objetivo.

Example:(continuar sin seleccionar objetivo):
	|Entrada: Objetivo físico: No seleccionado
	Acción: Presionar el botón "Continuar"
	Resultado: No se permite avanzar al siguiente paso.
	Mensaje: "Debes seleccionar un objetivo físico para continuar."
	Campo resaltado: Selección de objetivo (color rojo).