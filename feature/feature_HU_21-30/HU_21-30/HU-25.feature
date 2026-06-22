Acceptance Test N-25:

Feature: Recomendaciones automáticas según progreso

Como usuario intermedio, quiero recibir recomendaciones automáticas basadas en mi progreso semanal para mejorar mi rendimiento y evitar estancamientos en mi entrenamiento.

Scenario: Recomendación generada correctamente
Given que el usuario tiene sesiones registradas durante al menos una semana
When accede a la sección "Recomendaciones"
Then el sistema muestra sugerencias personalizadas relacionadas con intensidad, volumen o recuperación según su rendimiento registrado

Example:
[Entrada:
    Sesiones registradas: 1 semana completa
    Sección visitada: Recomendaciones
    Rendimiento detectado: Volumen alto


    Resultado esperado:
    El sistema muestra recomendaciones de recuperación.
    El sistema sugiere descanso, movilidad o reducción de intensidad.]


Scenario: Datos insuficientes para recomendar
Given que el usuario no tiene suficientes sesiones registradas
When accede a la sección "Recomendaciones"
Then el sistema muestra un mensaje indicando que necesita más datos para generar sugerencias personalizadas

Example:
[Entrada:
    Sesiones registradas: 0
    Sección visitada: Recomendaciones


    Resultado esperado:
    El sistema muestra el mensaje "Necesitamos más datos"
    Se indica que debe seguir entrenando para recibir recomendaciones personalizadas.]
