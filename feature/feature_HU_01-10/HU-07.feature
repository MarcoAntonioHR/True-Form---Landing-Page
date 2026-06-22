Feature: Corrección básica de postura

	Como usuario principiante, quiero recibir advertencias cuando realice incorrectamente un ejercicio para reducir el riesgo de lesiones y mejorar mi técnica.

Scenario: Detección de postura incorrecta
	Given que el usuario inicia un ejercicio con asistencia de cámara activada,
	When el sistema detecta una postura incorrecta durante el movimiento,
	Then el sistema muestra una advertencia visual indicando el error técnico y una recomendación breve de corrección.

Example:(detección de error en sentadilla):
	|Entrada: Ejercicio: Sentadilla
	Cámara: Activada
	Error detectado: Espalda inclinada hacia adelante
	Salida: Advertencia visual mostrada en pantalla.
	Mensaje: "Mantén la espalda recta durante el movimiento para evitar lesiones."
	Recomendación: "Mira al frente y activa el abdomen para mejorar tu postura."


Scenario: Cámara no disponible
	Given que el usuario no otorgó permisos de cámara a la aplicación,
	When intenta iniciar la corrección de postura,
	Then el sistema muestra un mensaje solicitando habilitar los permisos de cámara para utilizar la función.

Example:(permisos de cámara denegados):
	|Entrada: Permiso de cámara = Denegado
	Acción: Iniciar corrección de postura
	Resultado: La función no puede iniciarse.
	Mensaje: "Debes habilitar los permisos de cámara para utilizar la corrección de postura."
	Opción disponible: "Ir a configuración" para habilitar los permisos.