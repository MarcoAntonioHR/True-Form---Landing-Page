Feature: Definir objetivo avanzado por ciclo

    Como usuario avanzado, quiero definir un objetivo específico por ciclo de 
    entrenamiento para orientar mis rutinas hacia fuerza, hipertrofia o resistencia.

Scenario: Objetivo avanzado guardado
    Given que el usuario accede a la Planificación avanzada,
    When selecciona un objetivo por ciclo,
    Then el sistema guarda ese objetivo y adapta las recomendaciones de la rutina

Example: 
[Entrada:
    Pantalla: Planificación avanzada
    Objetivo seleccionado: Hipertrofia
    Acción: Presionar "Guardar objetivo"

Resultado esperado:
    El sistema guarda el objetivo Hipertrofia para el ciclo actual.
    La rutina se actualiza en un rango de 8-12 repeticiones y 18 series semanales.]

Scenario: Cambio de objetivo
    Given que el usuario ya tiene un objetivo activo,
    When selecciona uno nuevo,
    Then el sistema actualiza la planificación y muestra una confirmación.

Example:
[Entrada:
    Objetivo activo: Hipertrofia (semana 3 de 6)
    Nuevo objetivo seleccionado: Fuerza máxima
    Acción: Confirmar cambio

  Resultado esperado:
    El sistema reemplaza el objetivo activo por "Fuerza máxima". Se 
    muestra el mensaje "Objetivo actualizado correctamente"
    y el progreso previo queda guardado en el historial.]