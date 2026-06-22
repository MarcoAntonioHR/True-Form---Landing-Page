Acceptance Test N-27:

Feature: Resolución de dudas técnicas en tiempo real

Como usuario intermedio, quiero resolver dudas técnicas durante mi entrenamiento para mejorar mi ejecución y evitar errores en los ejercicios.

Scenario: Respuesta técnica generada
Given que el usuario se encuentra en la pantalla "Dudas Técnicas"
When escribe una pregunta sobre la ejecución de un ejercicio y presiona "Enviar"
Then el sistema muestra una respuesta clara del asistente IA relacionada con la técnica del ejercicio

Example:
[Entrada:
    Pregunta: ¿Cuál es el rango de movimiento correcto para las aperturas de mancuernas?
    Acción: Enviar


    Resultado esperado:
    El asistente IA responde con una explicación técnica.
    Se indica cómo controlar el movimiento y evitar bajar demasiado para proteger la articulación.]


Scenario: Consulta técnica vacía
Given que el usuario se encuentra en la pantalla "Dudas Técnicas"
When presiona "Enviar" sin escribir una pregunta
Then el sistema muestra un mensaje indicando que debe ingresar una consulta antes de continuar

Example:
[Entrada:
    Pregunta: -
    Acción: Enviar

  
    Resultado esperado:
    El sistema muestra un mensaje solicitando escribir una duda técnica.
    El mensaje no se envía hasta completar el campo.]
