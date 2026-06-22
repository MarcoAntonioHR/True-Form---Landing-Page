Feature: Comparación de rendimiento mensual
Como usuario avanzado, quiero comparar mi rendimiento físico entre diferentes meses para identificar mejoras, estancamientos y oportunidades de optimización en mi entrenamiento.

Scenario: Comparación visualizada correctamente
Given que el usuario tiene registros de entrenamiento de diferentes meses,
When accede a la sección de comparación de rendimiento,
Then el sistema muestra gráficos y estadísticas comparativas entre los períodos seleccionados.
Example:
[Entrada:
  Meses seleccionados: Abril y Mayo
  Acción: Entrar al dashboard de rendimiento
  Resultado esperado:
  Se visualizan estadísticas de progreso de fuerza muscular comparadas mes a mes.]

Scenario: Información insuficiente
Given que el usuario no cuenta con suficientes registros mensuales,
When intenta acceder a la comparación de rendimiento,
Then el sistema muestra un mensaje indicando que necesita más datos para realizar el análisis.
Example:
[Entrada:
  Datos disponibles: Solo datos del mes en curso
  Acción: Clic en Comparar Rendimiento Mensual
  Resultado esperado:
  Un mensaje indica: "Aún no hay datos mensuales suficientes para generar este reporte. Sigue entrenando".]