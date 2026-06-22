Acceptance Test N-26:

Feature: Resumen de sesión finalizada

Como usuario intermedio, quiero visualizar un resumen al finalizar mi sesión de entrenamiento para revisar mis ejercicios, cargas y series antes de guardar mi progreso.

Scenario: Visualización correcta del resumen
Given que el usuario finaliza una sesión de entrenamiento
When presiona el botón "Finalizar sesión"
Then el sistema muestra un resumen con ejercicios realizados, series, repeticiones y cargas registradas

Example:
[Entrada:
    Rutina: Full Body
    Ejercicios: 3
    Series: 9
    Repeticiones: 36
    Carga total: 108kg


    Resultado esperado:
    El sistema muestra el resumen de entrenamiento.
    Se visualizan los ejercicios realizados antes de guardar el progreso.]


Scenario: Confirmación de guardado
Given que el usuario revisa el resumen de su sesión
When presiona el botón "Guardar progreso"
Then el sistema almacena la sesión y muestra un mensaje de confirmación

Example:
[Entrada:
    Acción: Guardar progreso
    Rutina: Full Body

  
    Resultado esperado:
    El sistema muestra el mensaje "¡Progreso guardado!"
    Se indica que la sesión ya forma parte del historial de entrenamiento.]