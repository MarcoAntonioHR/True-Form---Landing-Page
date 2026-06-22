Feature: Registrar nivel de esfuerzo percibido
Como usuario intermedio, quiero registrar qué tan difícil me pareció una sesión para que la app pueda ajustar mejor mis próximas rutinas.

Scenario: Esfuerzo registrado
Given que el usuario finaliza una sesión,
When selecciona un nivel de esfuerzo del 1 al 5,
Then el sistema guarda ese dato dentro del resumen de entrenamiento.
Example:
[Entrada:
  Pantalla de fin de sesión desplegada
  Acción: Seleccionar Nivel de Esfuerzo 3
  Resultado esperado:
  El registro de entrenamiento guarda la sesión etiquetada con un esfuerzo de nivel 3 (Moderado).]

Scenario: Esfuerzo alto registrado
Given que el usuario selecciona un esfuerzo muy alto,
When guarda la sesión,
Then el sistema sugiere revisar descanso, recuperación o intensidad para la próxima rutina.
Example:
[Entrada:
  Nivel seleccionado: 5 (Esfuerzo extremo)
  Acción: Guardar la sesión
  Resultado esperado:
  El sistema arroja un mensaje: "Has reportado un esfuerzo extremo. Para tu próxima sesión sugerimos prolongar el descanso o bajar la intensidad general".]