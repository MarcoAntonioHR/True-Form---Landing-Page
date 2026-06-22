Feature: Revisar respaldo científico de una recomendación

  Como usuario avanzado, quiero revisar el respaldo científico de una recomendación para confiar en la información que me brinda la app.

Scenario: Fuente visible
  Given que el usuario abre una recomendación avanzada,
  When selecciona "Ver respaldo",
  Then el sistema muestra una explicación breve y la fuente asociada.

Example:
[Entrada:
    Recomendación: Sobrecarga progresiva semanal
    Acción: Ver respaldo

  Resultado esperado:
    El sistema muestra la explicación: "Aumentar 2.5% el peso cada semana mejora la síntesis proteica".
    Se listan las fuentes Schoenfeld (2010) y Krieger (2010), con nivel de evidencia A.]


Scenario: Fuente no disponible
  Given que una recomendación no tiene respaldo registrado,
  When el usuario intenta ver la fuente,
  Then el sistema muestra un mensaje indicando que la información aún no está disponible.

Example:
[Entrada:
    Recomendación: Entrenamiento en ayunas
    Acción: Ver respaldo

  Resultado esperado:
    El sistema muestra el mensaje "Fuente no disponible aún".
    Se ofrece la opción "Sugerir una fuente" en lugar de mostrar una referencia.]