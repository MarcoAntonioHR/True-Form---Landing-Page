Feature: Analizar fatiga acumulada

  Como usuario avanzado, quiero visualizar una estimación de fatiga acumulada para tomar 
  mejores decisiones sobre intensidad y recuperación.

Scenario: Fatiga estimada visible
  Given que el usuario tiene varias sesiones registradas,
  When accede a la sección de análisis avanzado,
  Then el sistema muestra un indicador de fatiga basado en volumen, frecuencia y esfuerzo registrado.

Example:
[Entrada:
    Sesiones registradas: 12
    Acción: Acceder a análisis avanzado

  Resultado esperado:
    El sistema muestra fatiga total de 74% (nivel alto) y un desglose por grupo muscular.
    Se muestra la recomendación de considerar una semana de descarga para piernas y espalda.]


Scenario: Sin datos suficientes
  Given que el usuario no tiene suficientes registros,
  When intenta ver la fatiga acumulada,
  Then el sistema muestra un mensaje indicando que necesita más sesiones registradas.

Example:
[Entrada:
    Sesiones registradas: 2
    Mínimo requerido: 5

  Resultado esperado:
    El sistema muestra el mensaje "Datos insuficientes".
    Se muestra el progreso 2/5 sesiones y una opción para ver cómo registrar sesiones.]