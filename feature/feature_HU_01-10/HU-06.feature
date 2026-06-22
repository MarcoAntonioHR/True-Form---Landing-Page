Feature: Recordatorio diario de entrenamiento

	Como usuario principiante, quiero recibir recordatorios diarios de mis entrenamientos programados para mantener mi constancia y motivación durante mi proceso físico.

Scenario: Envío correcto de recordatorio
	Given que el usuario tiene una rutina semanal configurada,
	When llega la hora programada de entrenamiento,
	Then el sistema envía una notificación recordando la sesión del día con el grupo muscular y ejercicios asignados.

Example:(recordatorio enviado correctamente):
	|Entrada: Rutina semanal activa
	Hora programada: 18:00
	Día: Lunes
	Salida: Notificación enviada correctamente.
	Mensaje: "¡Es hora de entrenar! Hoy trabajarás Pecho y Tríceps. Revisa tus ejercicios programados y comienza tu sesión."
	Información incluida:
	- Grupo muscular del día.
	- Ejercicios asignados.
	- Acceso directo a la rutina.


Scenario: Notificaciones desactivadas
	Given que el usuario desactiva las notificaciones desde configuración,
	When llega la hora programada de entrenamiento,
	Then el sistema no envía ningún recordatorio y mantiene la preferencia guardada.

Example:(notificaciones desactivadas por el usuario):
	|Entrada: Notificaciones = Desactivadas
	Hora programada: 18:00
	Resultado: No se envía ninguna notificación al dispositivo.
	Preferencia guardada: Notificaciones desactivadas.
	Comportamiento posterior: El sistema mantiene la configuración seleccionada hasta que el usuario la modifique nuevamente.