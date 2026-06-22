Acceptance Test N-28:

Feature: Visualización avanzada de métricas físicas

Como usuario intermedio, quiero modificar variables como intensidad, volumen y tiempo de descanso para personalizar mi rutina según mis objetivos y progreso físico.

Scenario: Modificación correcta de variables
Given que el usuario accede a la configuración avanzada de su rutina
When modifica valores de intensidad, series o descanso y guarda los cambios
Then el sistema actualiza automáticamente la rutina con los nuevos parámetros seleccionados

Example:
[Entrada:
    Grupo muscular: Pecho
    Series actuales: 16
    Series modificadas: 22
    Acción: Guardar cambios


    Resultado esperado:
    El sistema actualiza la configuración avanzada.
    La rutina se adapta a los nuevos parámetros seleccionados.]


Scenario: Valores inválidos ingresados
Given que el usuario ingresa valores fuera del rango permitido
When intenta guardar la configuración
Then el sistema muestra un mensaje de error solicitando ingresar valores válidos antes de continuar

Example:
[Entrada:
    Grupo muscular: Pecho
    Series modificadas: 28
    Rango máximo permitido: 26
    Acción: Guardar cambios


    Resultado esperado:
    El sistema muestra una alerta de posible sobrecarga.
    Botón visible: "Guardar igual"
    Botón visible: "Ajustar a 24 series"]
