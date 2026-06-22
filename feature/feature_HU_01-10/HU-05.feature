Feature: Tutorial inicial de uso

	Como usuario principiante, quiero visualizar un tutorial breve al ingresar por primera vez para entender cómo utilizar correctamente las funciones principales de la aplicación.

Scenario: Visualización correcta del tutorial
	Given que el usuario abre la aplicación por primera vez,
	When accede a la pantalla principal,
	Then el sistema muestra un tutorial interactivo explicando las funciones básicas de navegación y entrenamiento.

Example:(tutorial mostrado en el primer ingreso):
	|Entrada: Usuario nuevo
	Estado de cuenta: Primer acceso a la aplicación
	Salida: Tutorial interactivo compuesto por varias pantallas explicativas.
	Contenido mostrado:
	- Cómo visualizar la rutina semanal.
	- Cómo consultar el detalle de un ejercicio.
	- Cómo utilizar el chat con el asistente de IA.
	Botones disponibles: "Siguiente" y "Omitir".


Scenario: Omitir tutorial
	Given que el usuario ya visualizó el tutorial,
	When presiona el botón "Omitir",
	Then el sistema cierra el tutorial y guarda la preferencia para no mostrarlo nuevamente.

Example:(omisión del tutorial):
	|Entrada: Tutorial activo
	Acción: Presionar el botón "Omitir"
	Resultado: El tutorial se cierra inmediatamente.
	Mensaje: "Preferencia guardada correctamente."
	Comportamiento posterior: El tutorial no vuelve a mostrarse en futuros ingresos a la aplicación.