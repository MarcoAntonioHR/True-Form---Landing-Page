Feature: Recomendaciones de recuperación
Como usuario intermedio, quiero recibir recomendaciones de recuperación para evitar fatiga y mantener un progreso constante.

Scenario: Recomendación generada
Given que el usuario registra varias sesiones durante la semana,
When accede a la sección de recomendaciones,
Then el sistema muestra sugerencias relacionadas con descanso, movilidad o reducción de intensidad.
Example:
[Entrada:
  Sesiones consecutivas registradas: 5
  Acción: Entrar a la sección de recomendaciones
  Resultado esperado:
  El sistema aconseja: "Llevas 5 días seguidos entrenando. Considera hacer una sesión de estiramiento y movilidad para recuperar los grupos musculares mayores".]

Scenario: Semana con baja actividad
Given que el usuario registra pocas sesiones,
When consulta las recomendaciones,
Then el sistema muestra consejos para retomar la constancia sin sobrecargarse.
Example:
[Entrada:
  Sesiones registradas esta semana: 1
  Acción: Consultar sección de recomendaciones
  Resultado esperado:
  El sistema sugiere: "Ha sido una semana lenta. Retoma el ritmo con rutinas suaves de cuerpo completo para no sobrecargar el sistema nervioso central".]