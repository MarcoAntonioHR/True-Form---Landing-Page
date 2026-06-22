Feature: Configuración de horario de entrenamiento

	Como usuario principiante, quiero elegir el horario en el que suelo entrenar para recibir recordatorios en momentos adecuados.

Scenario: Horario guardado correctamente
	Given que el usuario accede a la configuración de entrenamiento,
	When selecciona una hora de entrenamiento,
	Then el sistema guarda el horario y lo utiliza para enviar recordatorios.

Example:(registro exitoso del horario):
	|Entrada: Hora seleccionada: 18:00
	Día de entrenamiento: Lunes a Viernes
	Salida: Horario guardado correctamente.
	Mensaje: "Tu horario de entrenamiento ha sido registrado con éxito."
	Configuración aplicada: Los recordatorios diarios serán enviados a las 18:00.


Scenario: Cambio de horario
	Given que el usuario ya tiene un horario registrado,
	When modifica la hora desde configuración,
	Then el sistema actualiza el nuevo horario de entrenamiento.

Example:(actualización del horario):
	|Entrada: Horario actual: 18:00
	Nuevo horario: 20:00
	Resultado: Horario actualizado correctamente.
	Mensaje: "Tu horario de entrenamiento ha sido actualizado."
	Configuración aplicada: Los próximos recordatorios serán enviados a las 20:00.