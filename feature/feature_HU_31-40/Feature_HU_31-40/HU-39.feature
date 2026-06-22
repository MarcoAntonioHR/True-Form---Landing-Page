Feature: Recomendaciones avanzadas de optimización
Como usuario avanzado, quiero recibir recomendaciones avanzadas basadas en mi rendimiento y progreso físico para optimizar mi entrenamiento de manera más precisa y eficiente.

Scenario: Recomendaciones mostradas correctamente
Given que el usuario tiene métricas y entrenamientos registrados en la aplicación,
When accede a la sección de recomendaciones avanzadas,
Then el sistema muestra sugerencias relacionadas con intensidad, volumen, recuperación y variación de ejercicios según su progreso.
Example:
[Entrada:
  Historial registrado: Nivel de estancamiento detectado en las métricas de pecho.
  Acción: Entrar a la vista de "Recomendaciones Avanzadas"
  Resultado esperado:
  El sistema propone: "Tus métricas de empuje se han estancado. Te sugerimos bajar un poco el volumen esta semana y trabajar en variaciones con inclinación para cambiar el estímulo".]

Scenario: Sin datos suficientes para análisis
Given que el usuario aún no registra suficiente información de entrenamiento,
When intenta visualizar recomendaciones avanzadas,
Then el sistema muestra un mensaje indicando que se necesitan más datos para generar sugerencias personalizadas.
Example:
[Entrada:
  Datos disponibles: 1 entrenamiento registrado
  Acción: Tratar de visualizar recomendaciones avanzadas
  Resultado esperado:
  La app devuelve el mensaje "Completa más entrenamientos para desbloquear análisis detallados y consejos de optimización".]
  