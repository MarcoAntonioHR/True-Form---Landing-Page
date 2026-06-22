Feature: Historial detallado de progreso físico
Como usuario avanzado, quiero acceder a un historial detallado de mis entrenamientos y métricas físicas para analizar mi evolución y tomar mejores decisiones en mi planificación deportiva.

Scenario: Visualización correcta del historial
Given que el usuario tiene entrenamientos y métricas registradas,
When accede a la sección de historial físico,
Then el sistema muestra de forma organizada los registros anteriores, incluyendo fechas, ejercicios, rendimiento y progreso físico.
Example:
[Entrada:
  Historial extenso de los últimos 6 meses almacenado
  Acción: Entrar a la sección "Historial Físico"
  Resultado esperado:
  Aparece una lista detallada ordenada cronológicamente con cada entrenamiento, métricas extraídas y variaciones del físico en el tiempo.]

Scenario: Historial sin registros
Given que el usuario aún no registra entrenamientos en la aplicación,
When accede a la sección de historial físico,
Then el sistema muestra un mensaje indicando que todavía no existen datos registrados.
Example:
[Entrada:
  Cuenta recién creada sin entrenamientos previos
  Acción: Seleccionar la opción de "Historial Físico"
  Resultado esperado:
  Un mensaje en pantalla vacía: "Historial vacío. ¡Comienza a entrenar hoy para empezar a generar datos!".]