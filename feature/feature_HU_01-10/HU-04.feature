Feature: Chat con asistente de IA para resolver dudas

	Como principiante, quiero escribir mis dudas en un chat dentro de la app para recibir respuestas claras del asistente sin tener que salir a buscar en internet.

Scenario: Envío y respuesta exitosa
	Given que el usuario escribe una pregunta en el chat y presiona enviar,
	When el asistente procesa la consulta,
	Then el sistema muestra la respuesta en un globo de texto diferenciado con formato claro en menos de 5 segundos.

Example:(consulta respondida correctamente):
	|Entrada: Pregunta: "¿Cuántos días a la semana debo entrenar si soy principiante?"
	Salida: Respuesta mostrada en un globo de texto del asistente:
	"Se recomienda entrenar entre 3 y 4 días por semana para permitir una adecuada recuperación muscular y progresar de forma segura."
	Tiempo de respuesta: Menor a 5 segundos.


Scenario: Chat vacío sin mensaje enviado
	Given que el usuario presiona enviar sin escribir nada,
	When el sistema detecta el campo vacío,
	Then no envía ningún mensaje y mantiene el cursor activo en el campo de texto.

Example:(intento de envío con campo vacío):
	|Entrada: Campo de mensaje vacío
	Acción: Presionar el botón "Enviar"
	Resultado: No se envía ningún mensaje al chat.
	Mensaje mostrado: "Escribe una pregunta para continuar."
	Cursor: Permanece activo en el campo de texto.
