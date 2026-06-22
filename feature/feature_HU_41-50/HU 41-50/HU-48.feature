Feature: Adaptar rutina avanzada por equipo limitado

  Como usuario avanzado, quiero adaptar mi rutina avanzada cuando tengo equipo limitado
  para mantener la intensidad sin abandonar mi planificación.

Scenario: Adaptación avanzada generada
  Given que el usuario indica que no tiene acceso a cierto equipo,
  When solicita adaptar su rutina,
  Then el sistema propone ejercicios equivalentes manteniendo el objetivo del entrenamiento.

Example:
[Entrada:
    Equipo no disponible: Barra olímpica
    Equipo disponible: Mancuernas, banco, poleas

  Resultado esperado:
    El sistema reemplaza "Peso muerto con barra" por "Peso muerto con mancuernas".
    El sistema reemplaza "Press banca" por "Press mancuernas", manteniendo el objetivo de hipertrofia.]


Scenario: Alternativas insuficientes
  Given que no existen suficientes alternativas compatibles,
  When el sistema intenta adaptar la rutina,
  Then muestra las opciones disponibles y advierte que la intensidad puede variar.

Example:
[Entrada:
    Equipo no disponible: Barra, poleas, máquinas
    Equipo disponible: Ninguno (peso corporal)

  Resultado esperado:
    El sistema muestra el mensaje "Alternativas limitadas".Se 
    proponen "Flexiones con pies elevados" y "Sentadilla con peso corporal", advirtiendo variación 
    de intensidad.]