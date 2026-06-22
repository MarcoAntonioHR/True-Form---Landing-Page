
Acceptance Test N-22:

Feature: Pantalla de progreso semanal con gráficos

Como usuario intermedio, quiero ver una pantalla con mis métricas de la semana para identificar si estoy avanzando o necesito cambiar algo en mi plan.

Scenario: Visualización de progreso con datos
Given que el usuario tiene al menos una semana registrada
When accede a la sección "Mi progreso"
Then el sistema muestra gráficos de barras o líneas con sesiones completadas, cargas por ejercicio y comparativa con la semana anterior

Example:
[Entrada:
    Semana registrada: Sí
    Volumen total: 5,402kg
    Sesiones: 45
    Tiempo total: 5h32m


    Resultado esperado:
    El sistema muestra el mensaje "¡Excelente progreso esta semana!"
    Se visualizan métricas semanales y gráfico de progreso.]


Scenario: Sin datos suficientes
Given que el usuario no tiene sesiones registradas aún
When accede a la sección "Mi progreso"
Then el sistema muestra una pantalla vacía con un mensaje motivacional y un botón directo para iniciar su primera sesión

Example:
[Entrada:
    Sesiones registradas: 0
    Sección visitada: Mi progreso


    Resultado esperado:
    El sistema muestra el mensaje "¡Empieza tu progreso hoy!"
    Botón visible: "Iniciar mi primera sesión"]