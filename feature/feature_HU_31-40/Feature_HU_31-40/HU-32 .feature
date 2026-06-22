Feature: Comparar desempeño semanal
Como usuario intermedio, quiero comparar mi desempeño semanal para identificar si estoy progresando o si necesito ajustar mi rutina.

Scenario: Comparación generada
Given que el usuario tiene dos semanas de datos registrados,
When accede a la sección de progreso semanal,
Then el sistema muestra una comparación entre ambas semanas.
Example:
[Entrada:
  Semanas registradas: Semana 1 y Semana 2
  Acción: Acceder a progreso semanal
  Resultado esperado:
  El sistema muestra un gráfico de barras comparando el volumen total levantado en la Semana 1 frente a la Semana 2.]

Scenario: Datos insuficientes
Given que el usuario solo tiene una semana registrada,
When intenta comparar su desempeño,
Then el sistema muestra un mensaje indicando que necesita más registros.
Example:
[Entrada:
  Semanas registradas: Semana 1 únicamente
  Acción: Intentar comparar desempeño
  Resultado esperado:
  El sistema deshabilita la vista y muestra: "Necesitas registrar al menos dos semanas para comparar tu desempeño".]