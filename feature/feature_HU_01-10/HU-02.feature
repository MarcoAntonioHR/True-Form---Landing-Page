Feature: Pantalla principal con rutina semanal generada

	Como principiante, quiero ver mi rutina semanal en la pantalla principal organizada por días para saber qué ejercicios me tocan cada día sin buscar nada.

Scenario: Visualización correcta de la rutina
	Given que el usuario tiene su perfil completo,
	When accede a la pantalla principal,
	Then el sistema muestra un calendario semanal con los días de la semana, el grupo muscular del día y los ejercicios asignados en tarjetas.

Example:(rutina semanal mostrada correctamente):
	|Entrada: Perfil completado
	Nivel: Principiante
	Objetivo: Ganar masa muscular
	Equipo disponible: Mancuernas
	Salida: Calendario semanal visible con:
	Lunes: Pecho y tríceps
	Martes: Espalda y bíceps
	Miércoles: Piernas
	Jueves: Hombros
	Viernes: Core y cardio
	Tarjetas de ejercicios asignadas para cada día.


Scenario: Día de descanso
	Given que el plan asigna un día de descanso,
	When el usuario accede a ese día,
	Then la tarjeta muestra un mensaje de recuperación con una recomendación de hidratación o movilidad.

Example:(visualización de día de descanso):
	|Entrada: Día seleccionado: Domingo
	Tipo de día: Descanso
	Resultado: Tarjeta de recuperación mostrada correctamente.
	Mensaje: "Hoy es tu día de descanso. Aprovecha para recuperarte y mantener una buena hidratación."
	Recomendación: Realizar estiramientos suaves o ejercicios de movilidad durante 10 minutos.