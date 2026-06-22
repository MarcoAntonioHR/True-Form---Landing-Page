Feature: Ajustar volumen por grupo muscular

  Como usuario avanzado, quiero ajustar el volumen de entrenamiento 
  por grupo muscular para optimizar mi rendimiento según mis prioridades.

Scenario: Ajuste de volumen exitoso
  Given que el usuario accede a la configuración avanzada,
  When modifica el volumen de un grupo muscular,
  Then el sistema actualiza la rutina con el nuevo parámetro.

Example:
[Entrada:
    Grupo muscular: Espalda
    Volumen anterior: 16 series
    Volumen nuevo: 20 series

  Resultado esperado:
    El sistema guarda el nuevo valor de 20 series para Espalda.
    La rutina semanal se recalcula reflejando el nuevo volumen asignado.]


Scenario: Volumen fuera de rango
  Given que el usuario ingresa un volumen demasiado alto,
  When intenta guardar el cambio,
  Then el sistema muestra una advertencia sobre posible sobrecarga.

Example:
[Entrada:
    Grupo muscular: Pecho
    Volumen ingresado: 28 series
    Rango recomendado: 6-26 series

  Resultado esperado:
    El sistema muestra el mensaje "Posible sobrecarga detectada".
    Se ofrece la opción de ajustar a 24 series o de guardar el valor igual, bajo advertencia.]