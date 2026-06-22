Acceptance Test N-30:

Feature: Visualizar carga recomendada por ejercicio

Como usuario intermedio, quiero ver una carga recomendada por ejercicio para entrenar con una intensidad adecuada a mi progreso.

Scenario: Carga recomendada visible
Given que el usuario abre el detalle de un ejercicio
When tiene registros anteriores
Then el sistema muestra una carga sugerida basada en su historial

Example:
[Entrada:
    Ejercicio: Ejercicio banca inclinada
    Registro anterior: 80kg x 15 repeticiones
    Sección: Detalle del ejercicio


    Resultado esperado:
    El sistema muestra una carga recomendada basada en el historial.
    Se sugiere mantener o ajustar la carga según el rendimiento anterior.]


Scenario: Sin historial previo
Given que el usuario no tiene registros anteriores del ejercicio
When abre el detalle
Then el sistema muestra una recomendación inicial basada en su nivel

Example:
[Entrada:
    Ejercicio: Press banca
    Historial previo: No disponible
    Nivel del usuario: Intermedio

    
    Resultado esperado:
    El sistema muestra una carga inicial recomendada.
    La recomendación se basa en el nivel registrado del usuario.]