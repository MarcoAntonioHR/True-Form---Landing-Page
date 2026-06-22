Feature: Programar semana de descarga

  Como usuario avanzado, quiero programar una semana de descarga para reducir la fatiga 
  acumulada y continuar progresando de forma segura.

Scenario: Semana de descarga activada
  Given que el usuario accede a la planificación avanzada,
  When selecciona "Programar descarga",
  Then el sistema ajusta temporalmente la intensidad y volumen de la rutina.

Example:
[Entrada:
    Semana seleccionada: 16 al 20
    Acción: Activar semana de descarga

  Resultado esperado:
    El sistema reduce la intensidad y el volumen de la rutina al 60% durante esa semana.
    El calendario marca los días 16 al 20 con el estado "Descarga".]


Scenario: Cancelación de descarga
  Given que el usuario tiene una semana de descarga programada,
  When selecciona "Cancelar descarga",
  Then el sistema restaura la planificación anterior.

Example:
[Entrada:
    Semana de descarga activa: Día 3 de 7
    Acción: Cancelar descarga

  Resultado esperado:
    El sistema restaura la intensidad y el volumen originales de la rutina.
    El calendario elimina el estado "Descarga" de los días restantes de esa semana.]