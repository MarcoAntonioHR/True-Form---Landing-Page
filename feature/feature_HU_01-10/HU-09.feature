Feature: Selección de equipo disponible

	Como usuario principiante, quiero indicar qué equipo tengo disponible para que la aplicación adapte mi rutina a mi realidad de entrenamiento.

Scenario: Registro de equipo disponible
	Given que el usuario está configurando su perfil,
	When selecciona opciones como mancuernas, colchoneta, máquinas o sin equipo,
	Then el sistema guarda esa información para generar rutinas compatibles.

Example:(equipo registrado correctamente):
	|Entrada: Equipo seleccionado: Mancuernas y colchoneta
	Acción: Presionar el botón "Continuar"
	Salida: Información guardada correctamente en el perfil del usuario.
	Mensaje: "Tu equipo disponible ha sido registrado con éxito."
	Personalización aplicada: Rutinas adaptadas para ejercicios con mancuernas y colchoneta.


Scenario: Usuario sin equipo
	Given que el usuario no cuenta con implementos de entrenamiento,
	When selecciona la opción "Sin equipo",
	Then el sistema genera ejercicios que puedan realizarse con peso corporal.

Example:(selección de entrenamiento sin equipo):
	|Entrada: Equipo seleccionado: Sin equipo
	Acción: Guardar configuración
	Resultado: Se genera una rutina basada en ejercicios con peso corporal.
	Ejercicios sugeridos:
	- Sentadillas
	- Flexiones
	- Plancha abdominal
	Mensaje: "Tu rutina ha sido adaptada para entrenar sin equipamiento."