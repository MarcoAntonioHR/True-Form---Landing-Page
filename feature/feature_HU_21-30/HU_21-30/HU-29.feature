Acceptance Test N-29:

Feature: Editar días disponibles de entrenamiento

Como usuario intermedio, quiero editar mis días disponibles de entrenamiento para que mi rutina semanal se adapte a mi horario real.

Scenario: Edición de días exitosa
Given que el usuario accede a la configuración de rutina
When selecciona los días disponibles de la semana
Then el sistema reorganiza la rutina según los días elegidos

Example:
[Entrada:
    Días seleccionados: Lunes, Miércoles, Viernes y Sábado
    Acción: Guardar cambios


    Resultado esperado:
    El sistema muestra el mensaje "¡Días actualizados!"
    La rutina semanal se reorganiza según el horario real del usuario.]


Scenario: Días insuficientes
Given que el usuario selecciona muy pocos días
When intenta guardar los cambios
Then el sistema muestra una advertencia indicando que el progreso puede verse limitado

Example:
[Entrada:
    Días seleccionados: Sábado
    Acción: Guardar cambios


    Resultado esperado:
    El sistema muestra el mensaje "Has seleccionado muy pocos días."
    Se recomienda seleccionar al menos 3 días para mantener continuidad.]
