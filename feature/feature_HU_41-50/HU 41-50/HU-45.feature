Feature: Checklist técnico por ejercicio

  Como usuario avanzado, quiero revisar un checklist técnico por ejercicio 
  para evaluar si estoy cumpliendo los puntos clave de ejecución.

Scenario: Checklist mostrado
  Given que el usuario abre un ejercicio avanzado,
  When selecciona "Checklist técnico",
  Then el sistema muestra puntos clave sobre postura, rango de movimiento y control.

Example:
[Entrada:
    Ejercicio seleccionado: Sentadilla
    Acción: Checklist técnico

  Resultado esperado:
    El sistema muestra 4 puntos: pies a ancho de hombros, espalda neutral, 
    rodillas alineadas y profundidad mínima de 90°.
    Cada punto incluye una breve explicación de su importancia técnica.]


Scenario: Marcado de puntos revisados
  Given que el usuario revisa el checklist,
  When marca los puntos cumplidos,
  Then el sistema guarda la revisión dentro del historial del ejercicio.

Example:
[Entrada:
    Ejercicio: Sentadilla
    Puntos marcados: 4 de 4
    Acción: Guardar revisión

  Resultado esperado:
    El sistema guarda la revisión con fecha y hora en el historial del ejercicio.
    El progreso técnico semanal se actualiza mostrando 4/4 puntos cumplidos.]